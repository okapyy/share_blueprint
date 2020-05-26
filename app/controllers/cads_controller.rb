class CadsController < ApplicationController
  def index
    @cads = Cad.includes(:user).order("created_at DESC").limit(6)
  end

  def new
    @cad = Cad.new
  end

  def create
    @cad = Cad.new(cad_params)
    @cad.save
    redirect_to root_path
  end

  def show
    if user_signed_in?
      @cad = Cad.find(params[:id])
    else
      redirect_to new_user_registration_path
    end
  end

  def edit
    @cad = Cad.find(params[:id])
  end

  def update
  end

  def destroy
    cad = Cad.find(params[:id])
    cad.destroy
  end

  def app
  end

  def download
    cad = Cad.find(params[:id])
    filepath = Rails.root.join('public', cad.design)
    stat = File::stat(filepath)
    send_file(filepath, design: cad.design, length: stat.size)
  end

  private
  def cad_params
    params.require(:cad).permit(:design, :company, :product_name, :detail).merge(user_id: current_user.id)
  end
end
