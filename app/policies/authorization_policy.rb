class AuthorizationPolicy < ApplicationPolicy

	def index?
		permission = "Index authorizations"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show authorizations"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create authorizations"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit authorizations"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete authorizations"
		@user.admin? || @user.has_permission?(permission)
	end

	class Scope < Scope

		def resolve
			if user.admin?
				scope.all
			end
		end

	end

end