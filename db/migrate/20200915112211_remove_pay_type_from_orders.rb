class RemovePayTypeFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :pay_type, :integer
  end
end
