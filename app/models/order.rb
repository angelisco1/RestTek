class Order < ActiveRecord::Base
	belongs_to :user
	has_many :order_items, :dependent => :delete_all
	has_many :items, through: :order_items
    validates :user, presence: true

    def self.filter_orders_by_user user
		Order.where(user_id: user)
	end

	def get_total_price
		order_items = OrderItem.where(order_id: self)
		@total = order_items.reduce(0) { |total, x| total + x.item.price }
	end

end
