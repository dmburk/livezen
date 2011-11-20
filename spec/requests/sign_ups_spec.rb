require 'spec_helper'

describe "SignUps" do
	it "creates a new user" do
		visit root_path
		click_link "signup"
		fill_in "First name", 						:with => "Frodo"
		fill_in "Last name", 							:with => "Baggins"
		fill_in "Email", 									:with => "frodo@theshire.com"
		fill_in "Password", 							:with => "thering"
		fill_in "Password confirmation", 	:with => "thering"
		click_button "Sign up"
		current_path.should eq(user_path)
		page.should have_content("Signup successful!")
		page.should have_content("Login to begin.")
	end
end
