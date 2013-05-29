class EquipmentType < ActiveRecord::Base
  belongs_to :manufacturer
  validates_associated :manufacturer

  validates :name, :presence => true

  has_many :equipment_items
end
