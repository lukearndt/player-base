class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :description
      t.string :phone_number
      t.string :email_address
      t.string :website
      t.datetime :ended_on

      t.timestamps
    end
  end
end
