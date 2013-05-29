class GameType < ActiveRecord::Base
  validates :name, :presence => true

  has_many :games
  has_many :role_types, :through => :wages
end
