class Role < ActiveRecord::Base
	has_many :users
    validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

end
