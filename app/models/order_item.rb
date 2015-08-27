class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :item
	has_one :order_item_status, :dependent => :delete
    validates :order, :item, presence: true

    def self.filter_order_items_by_status status
		# OrderItem.where(: status)
		# binding.pry
		order_item_statuses = OrderItemStatus.where(status_id: status)
		OrderItem.where(id: order_item_statuses)
	end

end
