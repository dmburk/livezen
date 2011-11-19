class List < ActiveRecord::Base
	has_many :list_shares
	has_many :users, :through => :list_shares

	attr_accessible :name

	validates :name, :presence => true
end
