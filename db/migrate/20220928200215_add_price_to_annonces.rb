class AddPriceToAnnonces < ActiveRecord::Migration[6.0]
  def change
    add_column :annonces, :price, :integer
    add_column :annonces, :dpe, :string
    add_column :annonces, :ges, :string
  end
end
