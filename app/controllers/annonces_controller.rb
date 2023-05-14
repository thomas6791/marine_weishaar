class AnnoncesController < ApplicationController
  skip_before_action :verify_authenticity_token
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
    @annonce = Annonce.friendly.find(params[:id])
    @markers = [{:lat=> @annonce.latitude, :lng=> @annonce.longitude}]
    #[{:lat=>49.0154694, :lng=>7.6205398
  end

  def create
    @annonce = Annonce.new(annonce_params)
    @annonce.town = @annonce.town.upcase
    @annonce.full_address = @annonce.address + "," + @annonce.town + "," + @annonce.cp
    @annonce.save
    redirect_to annonces_path
  end

  def edit
    @annonce = Annonce.friendly.find(params[:id])
  end

  def update
    @annonce = Annonce.friendly.find(params[:id])
    @annonce.update(annonce_params)
    redirect_to annonce_path(@annonce)
  end

  def destroy
    @annonce = Annonce.friendly.find(params[:id])
    @annonce.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to annonces_path, status: :see_other
  end

  def alsace
  end
  def bas_rhin
  end
  def strasbourg
    @annonces = Annonce.where(town: "STRASBOURG")
    @markers = @annonces.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: {flat: flat})
      }
    end
  end

  def annonce_params
    params.require(:annonce).permit(:titre, :town, :address, :cp, :full_address, :type_bien, :surface, :nbre_chambre, :nbre_bain,:balcon,:nbre_garage,:description,:nbre_cave,:cuisine,:surface_sejour,:etat_general,:etage,:nbre_etage,:type_chauffage,:type_cuisine,:annee_construction,:nbre_piece,:nbre_toilette,:nbre_etage_annonce,:mode_chauffage,:ascenceur,:price,:dpe,:vue_degagee,photos: [])
  end
end
