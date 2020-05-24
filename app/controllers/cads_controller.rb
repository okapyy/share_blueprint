class CadsController < ApplicationController
  def index
    @cads = Cad.includes(:user).order("created_at DESC").limit(6)
  end

  def new
    @cad = Cad.new
  end

  def create
    @cad = Cad.new(cad_params)
    @cad.save!
    redirect_to root_path
  end

  def app
  end

  private
  def cad_params
    params.require(:cad).permit(:design, :company, :product_name, :detail).merge(user_id: current_user.id)
  end
end
