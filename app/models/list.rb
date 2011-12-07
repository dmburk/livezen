class List < ActiveRecord::Base
  has_many :list_shares, :dependent => :destroy
	has_many :users, :through => :list_shares
  has_many :tasks, :dependent => :destroy
	attr_accessible :name

  after_create :make_owner

	validates :name, :presence => true

  protected

  def make_owner
    if (shares = ListShare.where(:list_id => @list.id, :user_id => current_user.id))
      ls = shares.first
      ls.owner = true
      ls.save!
    end
  end
end
