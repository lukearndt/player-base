module ApplicationHelper
  def logged_in?
    !!current_user
  end

  def current_user
  	@_current_user ||= session[:current_user_id] && User.find_by_id(session[:current_user_id])
  end

  def current_client
  	current_user.client
  end

  def current_client_id
  	current_user.client_id
  end

  def current_member
  	@_current_member ||= session[:current_member_id] && Member.find_by_id(session[:current_member_id])
  end
end
