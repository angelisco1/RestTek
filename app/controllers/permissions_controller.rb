class PermissionsController < ApplicationController

	def index
		@permissions = Permission.all
	end

	def show
		@permission = Permission.find_by(id: params[:id])
	end

	def new
		@permission = Permission.new
		# puts @options_for_select
	end

	def create
		@permission = Permission.new permission_params
		if @permission.save
			redirect_to permissions_path
		else
			@errors = @permission.errors.full_messages
			render 'new'
		end
	end


	private
	def permission_params
		return params.require(:permission).permit(:name, :description)
	end

end
