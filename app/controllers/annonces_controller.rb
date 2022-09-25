class AnnoncesController < ApplicationController
  def index
    @annonces = Annonce.all
  end

  def new
    @annonce = Annonce.new
  end

  def show
    @annonce = Annonce.find(params[:id])
  end

  def create
    @annonce = Annonce.new(params[:annonce])
    @annonce.save
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce
    redirect_to annonce_path(@annonce)_params)
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    @annonce.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to annonces_path, status: :see_other
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :adress)
  end
end
