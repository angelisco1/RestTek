class OrdersController < ApplicationController

	def index
		@orders = Order.all
		authorize @orders
	end

	def orders_filtered_by
		@orders = Order.filter_orders_by_user current_user
		#render 'index'
	end
	
	def send_to_kitchen
		@order = params[:order]
		oris = OrderItem.where(order: @order)

		oris.map do |order_item|
			OrderItemStatus.find_by(order_item: order_item).update(status: Status.find_by(name: "Sent"))
		end
		redirect_to orders_filtered_path(current_user)
	end

	def show
		@order = Order.find_by(id: params[:id])
		authorize @order
		@total_price = @order.get_total_price
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

	def update
		@order = Order.find params[:id]
		if @order.update order_params
			redirect_to orders_path
		else
			render 'edit'
		end
	end

	def edit
		@order = Order.find params[:id]
		authorize @order
	end

	def destroy
		@order = Order.find params[:id]
		authorize @order
		@order.destroy!
		redirect_to orders_path
	end

	private
	def order_params
		return params.require(:order).permit(:paid, :user_id)
	end

end
