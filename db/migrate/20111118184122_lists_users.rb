class ListsUsers < ActiveRecord::Migration
  def up
  	create_table 'lists_users', :id => false do |t|
  		t.column :list_id, :integer
  		t.column :user_id, :integer
  	end
  end

  def down
  	drop_table 'lists_users'
  end
end
