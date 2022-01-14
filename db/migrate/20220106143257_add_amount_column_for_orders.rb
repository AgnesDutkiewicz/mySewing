class AddAmountColumnForOrders < ActiveRecord::Migration[6.1]
  def change
    # Please fix me, I'm supposed to be able to handle 10,53 :sad_panda:
    # Use decimal with proper precision and scale (read documentation)
    add_column :orders, :amount, :decimal, precision: 10, scale: 2
  end
end
