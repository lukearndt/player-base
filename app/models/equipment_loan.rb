class EquipmentLoan < ActiveRecord::Base
  belongs_to :participation
  validates_associated :participation
  belongs_to :equipment_item
  validates_associated :equipment_item
end
