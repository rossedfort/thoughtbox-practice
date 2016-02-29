require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should be able to create" do
    user = User.new(username: 'rossedfort', password: 'password')

    assert user.save
  end
end
