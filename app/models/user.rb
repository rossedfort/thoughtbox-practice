class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
end
