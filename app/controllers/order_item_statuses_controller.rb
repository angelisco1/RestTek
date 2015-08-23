class OrderItemStatusesController < ApplicationController

	def index
		@order_item_statuses = OrderItemStatus.all
		authorize @order_item_statuses
	end

	def show
		@order_item_status = OrderItemStatus.find_by(id: params[:id])
		authorize @order_item_status
	end

	def new
		@order_item_status = OrderItemStatus.new
		authorize @order_item_status
	end

	def create
		@order_item_status = OrderItemStatus.new order_item_status_params
		if @order_item_status.save
			redirect_to order_item_statuses_path
		else
			@errors = @order_item_status.errors.full_messages
			render 'new'
		end
	end

	private
	def order_item_status_params
		return params.require(:order_item_status).permit(:order_item_id, :user_id, :status_id)
	end

end
