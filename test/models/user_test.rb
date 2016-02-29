require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should be able to create" do
    user = User.new(username: 'rossedfort',
                    password: 'password',
                    email: 'rossedfort@yahoo.com',
                    password_confirmation: 'password')

    assert user.valid?
  end
end
