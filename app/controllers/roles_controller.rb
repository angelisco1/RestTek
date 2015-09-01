class RolesController < ApplicationController

	def index
		# @roles = Role.all
		@roles = policy_scope(Role)
		authorize @roles
	end

	def show
		@role = Role.find_by(id: params[:id])
		authorize @role
	end

	def new
		@role = Role.new
		authorize @role
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

	def update
		@role = Role.find params[:id]
		if @role.update role_params
			redirect_to roles_path
		else
			render 'edit'
		end
	end

	def edit
		@role = Role.find params[:id]
		authorize @role
	end

	def destroy
		@role = Role.find params[:id]
		authorize @role
		@role.destroy!
		redirect_to roles_path
	end

	private
	def role_params
		return params.require(:role).permit(:name)
	end

end
