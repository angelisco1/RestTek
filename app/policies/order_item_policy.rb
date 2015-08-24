class OrderItemPolicy
	attr_reader :current_user, :order_item

	def initialize(current_user, order_item)
		@current_user = current_user
		@order_item = order_item
	end

	def index?
		permission = "Index order_items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show order_items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create order_items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit order_items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete order_items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end