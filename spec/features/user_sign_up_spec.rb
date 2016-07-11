require "rails_helper"

RSpec.describe "User signing up" do
	scenario 'successfuly' do
		visit new_user_registration_path
		fill_in "Email", with: "example@ha.com"
		fill_in "Password", with: "123456"
		fill_in "Password confirmation", with: "123456"

		click_on "Sign up"

		expect(page).to have_content "example@ha.com"
	end

	scenario 'unsuccessfuly' do

	end	
end