class Game < ActiveRecord::Base
  belongs_to :game_type
  validates_associated :game_type
  belongs_to :location
  validates_associated :location

  has_many :participations
end
