class CreateUserFriendships < ActiveRecord::Migration
  def change
    create_table :user_friendships do |t|
      t.integer :user_id
      t.integer :friend_id
      t.timestamps
    end

	# will optimize searches in the user_friendship table
    add_index :user_friendships, [:user_id, :friend_id]
    
  end
end
