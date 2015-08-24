class OrderItemStatusPolicy
	attr_reader :current_user, :order_item_status

	def initialize(current_user, order_item_status)
		@current_user = current_user
		@order_item_status = order_item_status
	end

	def index?
		permission = "Index order_item_statuses"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show order_item_statuses"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create order_item_statuses"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit order_item_statuses"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete order_item_statuses"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end