class Order < ActiveRecord::Base
	belongs_to :user
	has_many :order_items
	has_many :items, through: :order_items
    validates :user, presence: true

    def self.filter_orders_by_user user
		Order.where(user_id: user)
	end

end
