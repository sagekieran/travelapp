class User < ActiveRecord::Base
  has_secure_password

  has_many :trips
  has_many :suggestions
  has_many :comments
  has_many :friends

  
end
