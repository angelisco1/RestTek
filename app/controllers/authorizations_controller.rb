class AuthorizationsController < ApplicationController

	def index
		@authorizations = Authorization.all
	end

	def show
		@authorization = Authorization.find_by(id: params[:id])
	end

	def new
		@authorization = Authorization.new
	end

	def create
		@authorization = Authorization.new authorization_params
		if @authorization.save
			redirect_to authorizations_path
		else
			@errors = @authorization.errors.full_messages
			render 'new'
		end
	end


	private
	def authorization_params
		return params.require(:authorization).permit(:role_id, :permission_id)
	end
	
end