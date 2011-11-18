class CreateListShares < ActiveRecord::Migration
  def change
    create_table :list_shares do |t|
      t.integer :list_id
      t.integer :user_id
      t.boolean :write_access

      t.timestamps
    end
  end
end
