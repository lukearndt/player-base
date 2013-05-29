class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email_address
      t.belongs_to :member
      t.datetime :ended_on

      t.timestamps
    end
    add_index :emergency_contacts, :member_id
  end
end
