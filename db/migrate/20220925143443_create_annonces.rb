class CreateAnnonces < ActiveRecord::Migration[6.0]
  def change
    create_table :annonces do |t|
      t.string :titre
      t.string :town
      t.string :adress
      t.string :type_bien
      t.integer :surface
      t.integer :nbre_chambre
      t.integer :nbre_bain
      t.boolean :balcon
      t.integer :nbre_garage
      t.text :description
      t.integer :nbre_cave
      t.string :cuisine
      t.integer :surface_sejour
      t.string :etat_general
      t.integer :etage
      t.integer :nbre_etage
      t.string :type_chauffage
      t.string :type_cuisine
      t.integer :annee_construction
      t.integer :nbre_piece
      t.integer :nbre_toilette
      t.integer :nbre_etage_annonce
      t.string :mode_chauffage
      t.boolean :ascenceur
      t.boolean :vue_degagee

      t.timestamps
    end
  end
end
