class User < ActiveRecord::Base
	require 'bcrypt'
	attr_accessible :email, :password, :password_confirmation, :first_name, :last_name
	has_secure_password

	has_many :list_shares
	has_many :lists, :through => :list_shares
	
	validates_presence_of :password, :on => :create
	validates_presence_of :email

end
