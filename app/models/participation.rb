class Participation < ActiveRecord::Base
  belongs_to :game
  validates_associated :game
  belongs_to :role
  validates_associated :role
  belongs_to :team
  validates_associated :game
end
