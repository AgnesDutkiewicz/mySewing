class AddAnotherFildsToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :subname, :text
  end
end
