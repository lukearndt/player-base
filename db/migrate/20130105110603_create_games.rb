class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :game_type
      t.belongs_to :location
      t.datetime :ended_on

      t.timestamps
    end
    add_index :games, :game_type_id
    add_index :games, :location_id
  end
end
