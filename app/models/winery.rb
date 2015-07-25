class Winery < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :wines
  has_many :reviews
end
