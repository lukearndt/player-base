class LoginsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]

  def new
  	@login = Login.new
  end

  def create
  	@login = Login.new(params[:login])

    login
  end

  def destroy
  	@_current_user = session[:current_user_id] = 0
    @login.destroy
  	redirect_to root_path
  end

  def log(success)
  	@login.success = success
  	@login.ip_address = request.remote_ip
  	@login.password = '[stripped]'
  	@login.save
  end

  def login
    @user = User.find_by_username(@login.username.downcase)
    if not @user.nil?
      if @user.password == @login.password
        session[:current_user_id] = @user.id
        session[:current_client_id] = @user.client_id
        log(true) # log the successful attempt
        redirect_to root_path
      else
        log(false) # log the failed attempt
        redirect_to new_login_path, :notice => 'Invalid username/password combination'
      end
    else
      log(false) # log the failed attempt
      redirect_to new_login_path, :notice => 'Invalid username/password combination'
    end
  end
end
