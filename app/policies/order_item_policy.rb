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
			if user.admin?
				scope.all
			elsif user.role == 'Client'
				scope.all
				# Aqui deberia de ir los order_items de los pedidos del cliente
			end
		end
	end

end