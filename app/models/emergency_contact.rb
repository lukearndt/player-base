class EmergencyContact < ActiveRecord::Base
  belongs_to :member
  validates_associated :member
  
  validates :first_name, :presence => true, :length => { :minimum => 2 }
  validates :last_name, :presence => true, :length => { :minimum => 2 }
  validates :phone_number, :presence => true, :length => { :is => 10 }
  validates_email :email_address

  def full_name
  	return first_name + " " + last_name
  end
end
