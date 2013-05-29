class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :short_name
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
