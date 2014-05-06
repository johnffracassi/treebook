require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:friend)

  test "that creating a friendship works" do
    UserFriendship.create user: users(:johnfrac), friend: users(:herb)
    assert users(:johnfrac).friends.include?(users(:herb))
  end

   test "that creating friendships based on a user id and friend id works" do
    UserFriendship.create user_id: users(:johnfrac).id, friend_id: users(:herb).id
    assert users(:johnfrac).friends.include?(users(:herb))
  end
  
end
