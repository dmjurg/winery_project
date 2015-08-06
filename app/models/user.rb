class User < ActiveRecord::Base
  has_and_belongs_to_many :wineries
  has_many :reviews

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  scope :alphabetical, -> { order(:name) }
end
