require 'spec_helper'

describe "Users" do
	let(:user) { Factory(:user) }

	it "creates a new user" do
		visit root_path
		click_link "Sign up"
		fill_in "First name", 						:with => user.first_name
		fill_in "Last name", 							:with => user.last_name
		fill_in "Email", 									:with => user.email
		fill_in "Password", 							:with => user.password
		fill_in "Password confirmation", 	:with => user.password
		click_button "Sign up"
		current_path.should eq(login_path)
	end

	it "signs in a valid user" do
		visit root_path
		fill_in "Email", :with => user.email
		fill_in "Password", :with => user.password
		click_button "Login"
		current_path.should eq(user_path(user))
		page.should have_content("Logout")
	end
end