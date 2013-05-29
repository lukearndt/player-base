class Member < ActiveRecord::Base
  validates :first_name, :length => { :minimum => 2}
  validates :last_name, :length => { :minimum => 2 }
  validates :phone_number, :numericality => true, :length => { :minimum => 10 }
  validates :email_address, :email => true

  has_many :emergency_contacts
  has_many :roles
  has_many :participations, :through => :roles
  has_many :team_memberships, :through => :roles

  accepts_nested_attributes_for :roles, :allow_destroy => true

  def full_name
  	return first_name + " " + last_name
  end
end
