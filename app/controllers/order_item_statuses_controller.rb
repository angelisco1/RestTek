class OrderItemStatusesController < ApplicationController

	def index
		@order_item_statuses = OrderItemStatus.all
		authorize @order_item_statuses
	end

	def show
		@order_item_status = OrderItemStatus.find_by(id: params[:id])
		authorize @order_item_status
	end

	def change_status
		@order_item_status = OrderItemStatus.find_by(order_item_id: params[:id])
		@order_item_status.update(status: Status.find(params[:status_id]))
		redirect_to orders_filtered_by_user_path(current_user)
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

	def update
		@order_item_status = OrderItemStatus.find params[:id]
		if @order_item_status.update order_item_status_params
			redirect_to order_item_statuses_path
		else
			render 'edit'
		end
	end

	def edit
		@order_item_status = OrderItemStatus.find params[:id]
		authorize @order_item_status
	end

	def destroy
		@order_item_status = OrderItemStatus.find params[:id]
		authorize @order_item_status
		@order_item_status.destroy!
		redirect_to order_item_statuses_path
	end

	private
	def order_item_status_params
		return params.require(:order_item_status).permit(:order_item_id, :user_id, :status_id)
	end

end
