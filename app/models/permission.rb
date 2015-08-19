class Permission < ActiveRecord::Base
	has_many :authorizations
	has_many :roles, through: :authorizations
    validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
		
end
