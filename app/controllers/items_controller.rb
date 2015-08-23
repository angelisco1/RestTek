class ItemsController < ApplicationController
 
	def index
		@items = Item.all
		authorize @items
	end

	def show
		@item = Item.find_by(id: params[:id])
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


	private
	def item_params
		return params.require(:item).permit(:name, :description, :price, :available, :published, :category_id)
	end

end
