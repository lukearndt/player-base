class Manufacturer < ActiveRecord::Base
  validates :name, :presence => true
  validates :email_address, :email => true

  has_many :equipment_types
end
