class AddPasswordToLogin < ActiveRecord::Migration
  def change
    add_column :logins, :password, :string
  end
end
