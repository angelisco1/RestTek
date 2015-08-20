class OrderItemStatus < ActiveRecord::Base
	belongs_to :status
	belongs_to :order_item
	belongs_to :user
    validates :order_item, :status, presence: true
end
