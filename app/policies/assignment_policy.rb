class AssignmentPolicy
	attr_reader :current_user, :assignment

	def initialize(current_user, assignment)
		@current_user = current_user
		@assignment = assignment
	end

	def index?
		permission = "Index assignments"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show assignments"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create assignments"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit assignments"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete assignments"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end