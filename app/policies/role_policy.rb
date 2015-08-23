class RolePolicy
	attr_reader :current_user, :role

	def initialize(current_user, role)
		@current_user = current_user
		@role = role
	end

	def index?
		permission = "Index roles"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show roles"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create roles"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit roles"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete roles"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end