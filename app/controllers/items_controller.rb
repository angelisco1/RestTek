class ItemsController < ApplicationController
 
	def index
		@items = Item.all
		authorize @items
	end

	def show
		@item = Item.find_by(id: params[:id])
		@order = current_user.orders.last
		authorize @item
	end

	def new
		@item = Item.new
		authorize @item
	end

	def create
		@item = Item.new item_params
		if @item.save
			redirect_to items_path
		else
			@errors = @item.errors.full_messages
			render 'new'
		end
	end

	def update
		@item = Item.find params[:id]
		if @item.update item_params
			redirect_to items_path
		else
			render 'edit'
		end
	end

	def edit
		@item = Item.find params[:id]
		authorize @item
	end

	def destroy
		@item = Item.find params[:id]
		authorize @item
		@item.destroy!
		redirect_to items_path
	end


	private
	def item_params
		return params.require(:item).permit(:name, :description, :price, :available, :published, :category_id)
	end

end
