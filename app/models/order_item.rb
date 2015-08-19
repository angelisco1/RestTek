class OrderItem < ActiveRecord::Base
	belongs_to :order
	belongs_to :item
    validates :order, :item, presence: true

end
