class Status < ActiveRecord::Base
	has_many :assignments
	has_many :roles, through: :assignments
	validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

end
