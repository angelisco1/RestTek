require 'rails_helper'

RSpec.describe Item, type: :model do


	it "creates a proper item" do
		item = Item.create!(id: 1, name: 'Fish and chips', description: 'Fish with chips', 
			price: 12.14, category: Category.new(id: 1, name: "Starter"), available: true, published: true)
    	expect(Item.last.name).to eq("Fish and chips")
	end



end
