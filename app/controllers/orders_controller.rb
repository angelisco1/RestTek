class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def show
		@order = Order.find_by(id: params[:id])
		@user = User.find_by(id: @order.user_id).name
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new order_params
		if @order.save
			redirect_to orders_path
		else
			@errors = @order.errors.full_messages
			render 'new'
		end
	end

	private
	def order_params
		return params.require(:order).permit(:paid, :user_id)
	end

end
