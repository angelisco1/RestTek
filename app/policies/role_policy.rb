class RolePolicy < ApplicationPolicy	

	def index?
		permission = "Index roles"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show roles"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create roles"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit roles"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete roles"
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