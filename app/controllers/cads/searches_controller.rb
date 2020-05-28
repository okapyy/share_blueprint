class Cads::SearchesController < ApplicationController
  def index
    @cads = Cad.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(12)
  end
end
