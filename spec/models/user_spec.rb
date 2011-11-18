require 'spec_helper'

describe User do
	it { should have_many(:list_shares) }
	it { should have_many(:lists).through(:list_shares) }
end
