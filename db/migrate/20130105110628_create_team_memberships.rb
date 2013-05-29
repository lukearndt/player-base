class CreateTeamMemberships < ActiveRecord::Migration
  def change
    create_table :team_memberships do |t|
      t.belongs_to :team
      t.belongs_to :role
      t.datetime :ended_on

      t.timestamps
    end
    add_index :team_memberships, :team_id
    add_index :team_memberships, :role_id
  end
end
