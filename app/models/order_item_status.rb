class OrderItemStatus < ActiveRecord::Base
	belongs_to :status
	belongs_to :order_item
    validates :order_item, :status, presence: true
end
