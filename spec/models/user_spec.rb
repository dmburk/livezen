require 'spec_helper'

describe User do
	
	# Model associations
	it { should have_many :list_shares }
	it { should have_many(:lists).through(:list_shares) }



	# attr_accessible
	it { should allow_mass_assignment_of :email }
	it { should allow_mass_assignment_of :password }
	it { should allow_mass_assignment_of :first_name }
	it { should allow_mass_assignment_of :last_name }

	# validations
	it { should validate_presence_of :email }
	it { should validate_presence_of :password } # :on => :create?
	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }

	# it "should have a password on :create" do
	# 	user = Factory(:user, :password => nil)
	# 	post :create, :user
	# 	assigns[:user].should_not be_valid
	# end
	# it "should authenticate with matching email and password" do
	# end
end
