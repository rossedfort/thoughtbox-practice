require 'test_helper'

class UserCanCreateAccountTest < ActionDispatch::IntegrationTest
  test 'successful creation' do
    visit new_user_path
    fill_in 'Username', with: 'rossedfort'
    fill_in 'Email', with: 'rossedfort@yahoo.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Create Account'
    assert page.has_content?('Welcome, rossedfort!')
  end
end
