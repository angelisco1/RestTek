class ItemsController < ApplicationController
 
	def index
		@items = Item.all
	end

	def show
		@item = Item.find_by(id: params[:id])
		
	end

	def new
		@item = Item.new
		@options_for_select = Category.get_categories_for_select
		# puts @options_for_select
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
