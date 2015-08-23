class OrderItemsController < ApplicationController

	def index
		@order_items = OrderItem.all
		authorize @order_items
	end

	def show
		@order_item = OrderItem.find_by(id: params[:id])
		authorize @order_item
	end

	def new
		@order_item = OrderItem.new
		authorize @order_item
	end

	def create
		@order_item = OrderItem.new order_item_params
		if @order_item.save
			redirect_to order_items_path
		else
			@errors = @order_item.errors.full_messages
			render 'new'
		end
	end

	private
	def order_item_params
		return params.require(:order_item).permit(:notes, :order_id, :item_id)
	end

end
