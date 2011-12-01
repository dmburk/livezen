class List < ActiveRecord::Base
	has_many :list_shares, :dependent => :destroy
	has_many :users, :through => :list_shares
  has_many :tasks, :dependent => :destroy
	attr_accessible :name

	validates :name, :presence => true
end
