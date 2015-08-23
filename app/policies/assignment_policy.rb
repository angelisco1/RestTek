class AssignmentPolicy
	attr_reader :current_user, :assignment

	def initialize(current_user, assignment)
		@current_user = current_user
		@assignment = assignment
	end

	def index?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end