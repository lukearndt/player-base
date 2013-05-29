class TeamMembership < ActiveRecord::Base
  belongs_to :team
  validates_associated :team
  belongs_to :role
  validates_associated :role
end
