class CreateEquipmentTypes < ActiveRecord::Migration
  def change
    create_table :equipment_types do |t|
      t.string :name
      t.string :description
      t.belongs_to :manufacturer
      t.datetime :ended_on

      t.timestamps
    end
    add_index :equipment_types, :manufacturer_id
  end
end
