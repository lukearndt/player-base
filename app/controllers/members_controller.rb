class MembersController < ApplicationController
  
  def index
    @members = Member.where(:client_id => current_client_id)
  end
  
  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
    @role_types = RoleType.where(:client_id => current_client_id)
  end
  
  def create
    @member = Member.new(params[:member])
    @member.client_id = current_client_id

    # Make the new member a Player by default 
    @role = Role.new(:member => @member, :role_type => RoleType.find_by_name("Player"), :client_id => current_client_id)

    if @member.save
      @role.save
      session[:current_member_id] = @member.id
      redirect_to new_member_path, notice: @member.first_name + ' ' + @member.last_name + ' was successfully added.'
    else
      render action: "new"
    end
      
  end
end
