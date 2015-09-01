class OrderPolicy < ApplicationPolicy

	def index?
		permission = "Index orders"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show orders"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create orders"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit orders"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete orders"
		@user.admin? || @user.has_permission?(permission)
	end

	class Scope < Scope
		def resolve
			if user.admin?
				scope.all
			elsif user.role.name == 'Client'
				scope.where(user_id: user.id)
			else
				scope.all
			end
		end
	end

end