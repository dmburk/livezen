require 'spec_helper'

describe List do
	it { should have_many(:list_shares) }
	it { should have_many(:users).through(:list_shares) }

	it { should allow_mass_assignment_of(:name) }
	it { should_not allow_mass_assignment_of(:id) }

	it { should validate_presence_of :name }

  it "should make the creator of a list the owner" do
    user = Factory(:user)
    list = user.lists.build( :name => "The shire" )
    
    list.should_receive(:make_owner)
    list.save
  end
end
