class RolesController < ApplicationController

	def index
		@roles = Role.all
	end

	def show
		@role = Role.find_by(id: params[:id])
	end

	def new
		@role = Role.new
	end

	def create
		@role = Role.new role_params
		if @role.save
			redirect_to roles_path
		else
			@errors = @role.errors.full_messages
			render 'new'
		end
	end

	private
	def role_params
		return params.require(:role).permit(:name)
	end

end
