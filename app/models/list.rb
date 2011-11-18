class List < ActiveRecord::Base
	has_many :list_shares
	has_many :users, :through => :list_shares

	validates :name, :presence => true
end
