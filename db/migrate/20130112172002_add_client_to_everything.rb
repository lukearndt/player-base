class AddClientToEverything < ActiveRecord::Migration
  def change
  	current_tables = [:manufacturers, :equipment_types, :equipment_items, :equipment_loans, :teams, :members, :emergency_contacts, :role_types, :game_types, :locations, :games, :roles, :team_memberships, :wages, :participations]
  	current_tables.each do |t| 
      add_column t, :client_id, :integer
      add_index t, :client_id
    end
  end
end
