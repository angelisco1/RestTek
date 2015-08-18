class Status < ActiveRecord::Base
	has_many :assignments
	has_many :roles, through: :assignments
end
