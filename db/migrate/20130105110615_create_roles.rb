class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.belongs_to :member
      t.belongs_to :role_type
      t.datetime :ended_on

      t.timestamps
    end
    add_index :roles, :member_id
    add_index :roles, :role_type_id
  end
end
