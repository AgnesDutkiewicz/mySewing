class AddFabrics < ActiveRecord::Migration[6.1]
  def change
    create_table :fabrics do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :grammage
      t.string :recommended

      t.timestamps
      end
  end
end
