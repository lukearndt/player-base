class CreateAccessLevels < ActiveRecord::Migration
  def change
    create_table :access_levels do |t|
      t.string :name
      t.string :description
      t.datetime :ended_on

      t.timestamps
    end
  end
end
