class ItemPolicy

	class Scope
	attr_reader :current_user, :item

		def initialize(current_user, item)
			@current_user = current_user
			@item = item
		end

		def resolve
			if current_user.admin?
				item.all
			else
				item.where("available= ? AND published= ?", true, true)
			end
		end

	end

	def index?
		permission = "Index items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def show?
		permission = "Show items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def create?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def new?
		permission = "Create items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def update?
		permission = ""
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def edit?
		permission = "Edit items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

	def destroy?
		permission = "Delete items"
		@current_user.admin? || @current_user.has_permission?(permission)
	end

end