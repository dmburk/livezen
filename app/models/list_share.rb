class ListShare < ActiveRecord::Base
	belongs_to :user
	belongs_to :list

	validates :list_id, :user_id, :presence => true
end
