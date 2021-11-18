class AddOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :item_versions, foreign_key: true
      t.references :clients, foreign_key: true

      t.timestamps
    end
  end
end
