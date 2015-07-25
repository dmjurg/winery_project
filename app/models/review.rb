class Review < ActiveRecord::Base
  belongs_to :winery
  belongs_to :user
end
