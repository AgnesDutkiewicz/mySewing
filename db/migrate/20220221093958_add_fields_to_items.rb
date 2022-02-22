class AddFieldsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :discription, :text
    add_column :items, :size, :string
    add_column :items, :fabrics, :string
  end
end
