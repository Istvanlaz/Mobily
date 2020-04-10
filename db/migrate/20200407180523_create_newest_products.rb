class CreateNewestProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :newest_products do |t|

      t.timestamps
    end
  end
end
