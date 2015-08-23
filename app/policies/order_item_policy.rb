class OrderItemPolicy
	attr_reader :current_user, :order_item

	def initialize(current_user, order_item)
		@current_user = current_user
		@order_item = order_item
	end

	def index?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end