require 'rails_helper'

RSpec.describe User, type: :model do

	let(:valid_session) { {} }

	it "creates a proper user" do
		user = User.create!(id: 1, name: "Pedro", password: 12345678, password_confirmation: 12345678, admin: true, role: Role.new(id: 1, name: "Client"))
		expect(User.last.name).to eq("Pedro")
	end
	
end
