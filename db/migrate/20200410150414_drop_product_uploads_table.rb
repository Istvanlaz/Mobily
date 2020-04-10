class DropProductUploadsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :product_uploads
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
