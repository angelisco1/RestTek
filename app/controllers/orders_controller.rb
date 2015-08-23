class OrdersController < ApplicationController

	def index
		@orders = Order.all
		authorize @orders
	end

	def show
		@order = Order.find_by(id: params[:id])
		authorize @order
		@user = User.find_by(id: @order.user_id).name
	end

	def new
		@order = Order.new
		authorize @order
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
