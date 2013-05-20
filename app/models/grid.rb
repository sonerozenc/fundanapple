class Grid < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :project
  attr_accessible :x_location, :y_location
end
