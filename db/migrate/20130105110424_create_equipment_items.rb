class CreateEquipmentItems < ActiveRecord::Migration
  def change
    create_table :equipment_items do |t|
      t.string :condition
      t.belongs_to :equipment_type
      t.datetime :ended_on

      t.timestamps
    end
    add_index :equipment_items, :equipment_type_id
  end
end
