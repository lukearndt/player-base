class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account_name
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.references :client
      t.references :access_level
      t.datetime :ended_on

      t.timestamps
    end
    add_index :users, :client_id
    add_index :users, :access_level_id
  end
end
