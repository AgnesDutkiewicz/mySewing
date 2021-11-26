class ChangeTable < ActiveRecord::Migration[6.1]
  def change
    change_table :clients do |t|
      t.rename :clientname, :client_name
    end
    change_table :items do |t|
      t.remove :category
    end
  end
end
