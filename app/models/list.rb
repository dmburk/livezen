class List < ActiveRecord::Base
	has_many :list_shares
	has_many :users, :through => :list_shares
  has_many :tasks#, :dependant => :destroy
	attr_accessible :name

	validates :name, :presence => true
end
