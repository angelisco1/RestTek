class CategoryPolicy
	attr_reader :current_user, :category

	def initialize(current_user, category)
		@current_user = current_user
		@category = category
	end

	def index?
		permission = "Index categories"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def show?
		permission = "Show categories"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def new?
		permission = "Create categories"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def edit?
		permission = "Edit categories"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def destroy?
		permission = "Delete categories"
		@current_user.admin? || @current_user.has_permission(permission)
	end

end