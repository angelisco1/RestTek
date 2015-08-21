class CategoryPolicy
	attr_reader :current_user, :category

	def initialize(current_user, category)
		@current_user = current_user
		@category = category
	end

	def destroy?
		@current_user.role.name == 'Admin'
	end

end