class UserPolicy
	attr_reader :current_user, :user

	def initialize(current_user, user)
		@current_user = current_user
		@user = user
	end

	def index?
		permission = "Index users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def profile?
		permission = "Profile users"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end