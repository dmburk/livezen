class User < ActiveRecord::Base
	has_many :list_shares
	has_many :lists, :through => :list_shares
end
