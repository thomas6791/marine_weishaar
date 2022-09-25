class ChangeAnnonceAscenseur < ActiveRecord::Migration[6.0]
  def change
    rename_column :annonces, :ascenceur, :ascenseur
  end
end
