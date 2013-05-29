class Wage < ActiveRecord::Base
  belongs_to :game_type
  validates_associated :game_type
  belongs_to :role_type
  validates_associated :role_type

  validates :amount, :presence => :true, :numericality => :true
end
