class Assignment < ActiveRecord::Base
	belongs_to :status
	belongs_to :role
    validates :role, :status, presence: true
end
