class AuthorizationPolicy
	attr_reader :current_user, :authorization

	def initialize(current_user, authorization)
		@current_user = current_user
		@authorization = authorization
	end

	def index?
		permission = "Index authorizations"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show authorizations"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create authorizations"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit authorizations"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete authorizations"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end