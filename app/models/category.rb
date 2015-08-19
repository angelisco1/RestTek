class Category < ActiveRecord::Base
	has_many :items
    validates :name, presence: true, uniqueness: true, length: { minimum: 3 }

end
