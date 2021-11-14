class AddItemVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :item_versions do |t|
      t.string :size
      t.string :color
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
