class Winery < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :reviews

  # ruby syntax for an anonymous function "lambdas"
  # we are passing the name of a function to be created and the action to the scope method
  scope :alphabetical, -> { order(:name) }
end
