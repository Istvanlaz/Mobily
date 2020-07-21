class CreateSavings < ActiveRecord::Migration[5.2]
  def change
    create_table :savings do |t|
      t.references :product, foreign_key: true
      t.references :wishlist, foreign_key: true

      t.timestamps
    end
  end
end
