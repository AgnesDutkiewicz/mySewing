class ChangeTableItems < ActiveRecord::Migration[6.1]
  def change
    change_table :items do |t|
      t.remove :category
    end
  end
end
