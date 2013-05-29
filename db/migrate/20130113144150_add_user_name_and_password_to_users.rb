class AddUserNameAndPasswordToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :account_name, :string
  	add_column :users, :username, :string
  	add_column :users, :password, :string
  end
end
