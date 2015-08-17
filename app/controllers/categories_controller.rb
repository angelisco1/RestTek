class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def show
		@category = Category.find_by(id: params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new category_params
		if @category.save
			redirect_to categories_path
		else
			@errors = @category.errors.full_messages
			render 'new'
		end
	end

	private
	def category_params
		return params.require(:category).permit(:name)
	end

end
