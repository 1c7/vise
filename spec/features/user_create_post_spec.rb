require 'rails_helper'


RSpec.describe "Creating post" do 

	scenario "successfuly" do 
		visit root_path 
		click_on "Write a story"

		fill_in "Title", with: "my first post"
		fill_in "Body", with: "awesome content"

		click_on "Publish"

		expect(page).to have_content  "my first post"
	end

	scenario "unsuccessfuly" do
		visit root_path
		click_on "Write a story"

		fill_in "Title", with: "s"

		click_on "Publish"

		
		expect(page).to have_css  ".error"# didn't copy paste that view code so this not pass, it's ok
		expect(current_path).to eq(new_post_path)
	end

end





