class EquipmentItem < ActiveRecord::Base
  belongs_to :equipment_type
  validates_associated :equipment_type

  has_many :equipment_loans
end
