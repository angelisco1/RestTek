class UsersController < ApplicationController
	before_action :authenticate_user!

	
	def index
		@users = User.all
	end

	def show
		@user = User.find_by(id: params[:id])
	end

	def profile
		@user = current_user
		render 'users/profile'
	end


end
