class OrderItemStatus < ActiveRecord::Base
	belongs_to :status
	belongs_to :order_item
end
