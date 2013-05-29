class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.belongs_to :game
      t.belongs_to :role
      t.belongs_to :team
      t.datetime :ended_on

      t.timestamps
    end
    add_index :participations, :game_id
    add_index :participations, :role_id
    add_index :participations, :team_id
  end
end
