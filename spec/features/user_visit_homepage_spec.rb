require 'rails_helper'


RSpec.feature "User visit homepage" do
	scenario "Successfully see a logo " do
		visit root_path
		expect(page).to have_content "MyApp"
	end
end