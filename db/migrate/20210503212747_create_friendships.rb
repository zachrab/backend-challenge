class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships do |t|
      t.string :member_id
      t.string :integer
      t.string :friend_id
      t.string :integer

      t.timestamps
    end
  end
end
