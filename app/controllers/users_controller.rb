class UsersController < ApplicationController
	# before_action :authenticate_user!
	# skip_before_action :authenticate_user!

	
	def index
		@users = User.all
		authorize @users
	end

	def show
		# @user = User.find_by(id: params[:id])
		@user = current_user
		authorize @user
	end

	def profile
		@user = current_user
		authorize @user
		# render 'users/profile'
	end

	private
	def user_params
		return params.require(:user).permit(:name, :admin, :role)
	end

end
