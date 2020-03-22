class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.bigint :user_id
      t.bigint :product_id

      t.timestamps
    end
  end
end
