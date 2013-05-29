class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :decimal_field

      t.timestamps
    end
  end
end
