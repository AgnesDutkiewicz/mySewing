class FixOrderClient < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.remove :clients_id, type: :bigint, foreign_key: true
      t.references :client, foreign_key: true
    end
  end
end
