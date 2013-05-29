class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email_address
      t.decimal :balance
      t.datetime :ended_on

      t.timestamps
    end
  end
end
