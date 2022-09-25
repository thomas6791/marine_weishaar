class ChangeAnnonceAscenseur < ActiveRecord::Migration[6.0]
  def change
    rename_column :annonce, :ascenceur, :ascenseur
  end
end
