class User < ActiveRecord::Base
  has_and_belongs_to_many :wineries
  has_many :reviews

  has_secure_password
end
