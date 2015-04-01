class Users < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :comments
end
