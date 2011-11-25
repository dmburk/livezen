require 'spec_helper'

describe "Users" do
	let(:user) { Factory(:user) }
	
	before(:each) do
		visit root_path
	end

	it "creates a new user" do
		click_link "Sign up"
		fill_in "First name", 						:with => user.first_name
		fill_in "Last name", 							:with => user.last_name
		fill_in "Email", 									:with => user.email
		fill_in "Password", 							:with => user.password
		fill_in "Password confirmation", 	:with => user.password
		click_button "Sign up"
		current_path.should eq(login_path)
		page.should have_content("Signup successful.")
	end

	it "signs in a valid user" do
		fill_in "Email", :with => user.email
		fill_in "Password", :with => user.password
		click_button "Login"
		page.should have_content("frodo@middle_earth.net")
		page.should have_content("Logout")
	end

	it "does not sign in an invalid user" do
		fill_in "Email", :with => "notvalid@nono.net"
		fill_in "Password", :with => "1234"
		click_button "Login"
		page.should have_content("Invalid email or password")
	end

	it "logs out a user" do
		fill_in "Email", :with => user.email
		fill_in "Password", :with => user.password
		click_button "Login"
		click_link "Logout"
		current_path.should eq(login_path)
		page.should have_content("Login")
	end
end
