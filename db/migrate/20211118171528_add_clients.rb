class AddClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :clientname

      t.timestamps
    end
  end
end
