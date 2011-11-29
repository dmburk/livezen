class AddOwnerToListShare < ActiveRecord::Migration
  def change
    add_column :list_shares, :owner, :boolean
  end
end
