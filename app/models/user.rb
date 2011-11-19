class User < ActiveRecord::Base
	has_many :list_shares
	has_many :lists, :through => :list_shares

	attr_accessible :email, :password, :first_name, :last_name

	validates_presence_of :email, 
												:password,
												:password_confirmation,
												:first_name,
												:last_name
end
