class Category < ActiveRecord::Base
	has_many :items


	def self.get_categories_for_select
		@categories = self.all.map { |x| x.name }
		@categories.zip(Array (1..@categories.length))
	end

end
