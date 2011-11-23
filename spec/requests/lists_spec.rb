require 'spec_helper'

describe "Lists" do
  before(:each) do
    current_user = Factory(:user)
  end

  it "add a new list" do
    visit root_path
    click_link "Listable"
    click_link "New list"
    fill_in "Name", :with => "Groceries"
    click_button "Create"
    current_path.should eq(list_path(@list))
  end
end
