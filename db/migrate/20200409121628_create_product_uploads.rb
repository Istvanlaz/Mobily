class CreateProductUploads < ActiveRecord::Migration[5.2]
  def change
    create_table :product_uploads do |t|

      t.timestamps
    end
  end
end
