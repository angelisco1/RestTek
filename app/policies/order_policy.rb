class OrderPolicy

	class Scope
	attr_reader :current_user, :order

		def initialize(current_user, order)
			@current_user = current_user
			@order = order
		end

		def resolve
			if current_user.admin?
				order.all
			elsif current_user.role.name == 'Client'
				order.where(user_id: current_user.id)
			else
				order.all
			end
		end

	end


	def index?
		permission = "Index orders"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show orders"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create orders"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit orders"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete orders"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end