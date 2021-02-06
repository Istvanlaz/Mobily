class AddPayTypeToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :pay_type, :integer
  end
end
