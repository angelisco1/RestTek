class UserPolicy
	attr_reader :current_user, :user

	def initialize(current_user, user)
		@current_user = current_user
		@user = user
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