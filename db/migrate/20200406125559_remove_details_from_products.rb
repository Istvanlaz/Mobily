class RemoveDetailsFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :category, :string
    remove_column :products, :latitude, :float
    remove_column :products, :longitude, :float
  end
end
