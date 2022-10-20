class AnnoncesController < ApplicationController
  def index
    @annonces = Annonce.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @annonces.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: {flat: flat})
      }
    end
  end

  def new
    @annonce = Annonce.new
  end

  def show
    @annonce = Annonce.find(params[:id])
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.full_address = @annonce.address + " " + @annonce.cp + " " + @annonce.town
    @annonce.save
  end

  def edit
    @annonce = Annonce.find(params[:id])
  end

  def update
    @annonce = Annonce.find(params[:id])
    @annonce.update(annonce_params)
    redirect_to annonce_path(@annonce)
  end

  def destroy
    @annonce = Annonce.find(params[:id])
    @annonce.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to annonces_path, status: :see_other
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :town, :address, :cp, :type_bien, :surface, :nbre_chambre, :nbre_bain,:balcon,:nbre_garage,:description,:nbre_cave,:cuisine,:surface_sejour,:etat_general,:etage,:nbre_etage,:type_chauffage,:type_cuisine,:annee_construction,:nbre_piece,:nbre_toilette,:nbre_etage_annonce,:mode_chauffage,:ascenceur,:price,:dpe,:vue_degagee,photos: [])
  end
end
