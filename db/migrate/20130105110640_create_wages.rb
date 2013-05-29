class CreateWages < ActiveRecord::Migration
  def change
    create_table :wages do |t|
      t.decimal :amount
      t.belongs_to :game_type
      t.belongs_to :role_type
      t.datetime :ended_on

      t.timestamps
    end
    add_index :wages, :game_type_id
    add_index :wages, :role_type_id
  end
end
