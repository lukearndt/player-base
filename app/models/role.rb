class Role < ActiveRecord::Base
  belongs_to :member
  validates_associated :member
  belongs_to :role_type
  validates_associated :role_type

  has_many :teams, :through => :team_membership
  has_many :participations
  has_many :games, :through => :participations
end
