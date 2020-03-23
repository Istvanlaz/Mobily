class CreateShopingCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shoping_carts do |t|
      t.bigint :user_id
      t.bigint :product_id

      t.timestamps
    end
  end
end
