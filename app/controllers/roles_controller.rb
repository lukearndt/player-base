class RolesController < ApplicationController

	def index
		current_member_id = session[:current_member_id]
		
		if current_member_id.nil?
			@member = Member.new
		else
			@member = Member.find(current_member_id)
		end
		@members = Member.find(:all, :order => "lower(first_name), lower(last_name)")

		@role_type = RoleType.new
		@role_types = RoleType.find(:all, :order => "name")
		
		@role = Role.new

		render 'new'
	end

	def create
		@role = Role.new(params[:role])

	end
end
