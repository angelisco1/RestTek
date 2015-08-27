class CategoriesController < ApplicationController

	def index
		# @categories = Category.all
		# binding.pry
		@categories = policy_scope(Category)
		# authorize @category
	end

	def show
		# @category = Category.find_by(id: params[:id])
		@category = Category.find_by(id: params[:id])
		# authorize @category
	end

	def new
		@category = Category.new
		authorize @category
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

	def update
		@category = Category.find params[:id]
		if @category.update category_params
			redirect_to categories_path
		else
			render 'edit'
		end
	end

	def edit
		@category = Category.find params[:id]
		authorize @category
	end

	def destroy
		@category = Category.find params[:id]
		authorize @category
		@category.destroy!
		redirect_to categories_path
	end

	private
	def category_params
		return params.require(:category).permit(:name)
	end

end
