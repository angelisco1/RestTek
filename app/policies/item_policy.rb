class ItemPolicy < ApplicationPolicy

	def index?
		permission = "Index items"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show items"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create items"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit items"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete items"
		@user.admin? || @user.has_permission?(permission)
	end

	class Scope < Scope
		def resolve
			if user.admin?
				scope.all
			else
				scope.where('published= ? and available= ?', true, true)
			end
		end
	end

end