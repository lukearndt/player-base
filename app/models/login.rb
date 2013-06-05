class Login < ActiveRecord::Base
  validates_presence_of :username, :password

  def destroy
  	self.ended_on = Time.now
  end

end
