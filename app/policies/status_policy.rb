class StatusPolicy
	attr_reader :current_user, :status

	def initialize(current_user, status)
		@current_user = current_user
		@status = status
	end

	def index?
		permission = "Index statuses"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def show?
		permission = "Show statuses"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def new?
		permission = "Create statuses"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def edit?
		permission = "Edit statuses"
		@current_user.admin? || @current_user.has_permission(permission)
	end

	def destroy?
		permission = "Delete statuses"
		@current_user.admin? || @current_user.has_permission(permission)
	end


end