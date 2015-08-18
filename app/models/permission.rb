class Permission < ActiveRecord::Base
	has_many :authorizations
	has_many :roles, through: :authorizations

	
end
