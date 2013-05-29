class CreateEquipmentLoans < ActiveRecord::Migration
  def change
    create_table :equipment_loans do |t|
      t.belongs_to :participation
      t.belongs_to :equipment_item
      t.datetime :ended_on

      t.timestamps
    end
    add_index :equipment_loans, :participation_id
    add_index :equipment_loans, :equipment_item_id
  end
end
