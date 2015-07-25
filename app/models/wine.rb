class Wine < ActiveRecord::Base
  has_and_belongs_to_many :wineries
end
