class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.datetime :ended_on

      t.timestamps
    end
  end
end
