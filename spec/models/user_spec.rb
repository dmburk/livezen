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

	# attr_protected
	it { should_not allow_mass_assignment_of :hashed_password }
	it { should_not allow_mass_assignment_of :salt }
	it { should_not allow_mass_assignment_of :id }
	it { should_not allow_mass_assignment_of :created_at }
	it { should_not allow_mass_assignment_of :updated_at }

	# validations
	it { should validate_presence_of :email }
	it { should validate_presence_of :password }
	it { should validate_presence_of :password_confirmation }
	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }
end
