class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :item
	has_one :order_item_status, :dependent => :delete
    validates :order, :item, presence: true

end
