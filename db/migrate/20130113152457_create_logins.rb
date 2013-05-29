class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :ip_address
      t.boolean :success

      t.timestamps
    end
  end
end
