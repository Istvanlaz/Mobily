class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.float :latitude
      t.float :longitude
      t.integer :price
      t.boolean :bought

      t.timestamps
    end
  end
end
