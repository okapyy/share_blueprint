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
    cad = Cad.find(params[:id])
    cad.update(cad_params)
    redirect_to cad
  end

  def destroy
    cad = Cad.find(params[:id])
    cad.destroy
    redirect_to root_path
  end

  def app
  end

  def all
    @cads = Cad.includes(:user).order("created_at DESC").page(params[:page]).per(12)
  end

  def download
    cad = Cad.find(params[:id])
    send_data(cad.design.read, filename: cad.product_name)
  end

  def search
    @cads = Cad.search(params[:keyword])
  end

  private
  def cad_params
    params.require(:cad).permit(:design, :thumbnail, :company, :product_name, :detail).merge(user_id: current_user.id)
  end
end
