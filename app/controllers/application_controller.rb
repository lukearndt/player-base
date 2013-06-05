class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery

  before_filter :require_login

  def require_login
  	unless logged_in?
  		flash[:error] = "You must be logged in to access this section"
  		redirect_to new_login_path
  	end
  end

end
