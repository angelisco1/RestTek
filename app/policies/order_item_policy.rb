class OrderItemPolicy < ApplicationPolicy
	
	def index?
		permission = "Index order_items"
		@user.admin? || @user.has_permission?(permission)
	end

	def show?
		permission = "Show order_items"
		@user.admin? || @user.has_permission?(permission)
	end

	def create?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def new?
		permission = "Create order_items"
		@user.admin? || @user.has_permission?(permission)
	end

	def update?
		permission = ""
		@user.admin? || @user.has_permission?(permission)
	end

	def edit?
		permission = "Edit order_items"
		@user.admin? || @user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete order_items"
		@user.admin? || @user.has_permission?(permission)
	end

	class Scope < Scope

		def resolve
			if user.admin? || user.role.name == 'Chef'
				scope.all
			elsif user.role.name == 'Client'
				scope.where(order_id: Order.where(user_id: user))
			end
		end
	end

end