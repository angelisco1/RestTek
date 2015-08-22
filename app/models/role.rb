class Role < ActiveRecord::Base
	has_many :users
	has_many :authorizations, :dependent => :delete_all
	has_many :permissions, through: :authorizations
    validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

    def has_permission? permission
    	self.permissions == permission
    	# binding.pry
    end

end
