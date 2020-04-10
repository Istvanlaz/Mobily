class CreateBestDeals < ActiveRecord::Migration[5.2]
  def change
    create_table :best_deals do |t|

      t.timestamps
    end
  end
end
