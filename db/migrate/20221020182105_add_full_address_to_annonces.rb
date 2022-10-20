class AddFullAddressToAnnonces < ActiveRecord::Migration[6.0]
  def change
    add_column :annonces, :full_address, :string
  end
end
