class CategoryPolicy < ApplicationPolicy	


	def index?
		permission = "Index categories"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show categories"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create categories"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit categories"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete categories"
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