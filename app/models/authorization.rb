class Authorization < ActiveRecord::Base
	belongs_to :role
	belongs_to :permission
    validates :role, :permission, presence: true

end
