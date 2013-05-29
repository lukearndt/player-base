class RoleType < ActiveRecord::Base
  validates :name, :presence => :true

  has_many :roles
  has_many :game_types, :through => :wages
end
