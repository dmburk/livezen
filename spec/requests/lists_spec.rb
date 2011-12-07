require 'spec_helper'

describe "Lists" do
  before(:each) do
    current_user = Factory.build(:user, :id => 1)
    controller.stub!(:current_user).and_return(current_user)
  end

  it "add a new list" do
    visit root_path
    click_link "Listable"
    click_link "New list"
    fill_in "Name", :with => "Groceries"
    click_button "Create"
    page.should have_content "Groceries"
  end
end
