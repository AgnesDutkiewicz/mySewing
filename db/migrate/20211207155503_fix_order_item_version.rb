class FixOrderItemVersion < ActiveRecord::Migration[6.1]
  def change
    change_table :orders do |t|
      t.remove :item_versions_id, type: :bigint, foreign_key: true
      t.references :item_version, foreign_key: true
    end
  end
end
