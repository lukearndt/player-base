class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :description
      t.string :street_address
      t.datetime :ended_on

      t.timestamps
    end
  end
end
