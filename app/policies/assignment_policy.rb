class AssignmentPolicy < ApplicationPolicy


	def index?
		permission = "Index assignments"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show assignments"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create assignments"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit assignments"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete assignments"
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