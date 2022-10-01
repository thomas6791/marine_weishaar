class AddMoneyToAnnonces < ActiveRecord::Migration[6.0]
  def change
    remove_column :annonces, :price
    add_monetize :annonces, :price
  end
end
