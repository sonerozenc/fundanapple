class Grid < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :project
  attr_accessible :x_location, :y_location, :project_id, :artwork_id
  # validates :project_id, uniqueness: { scope: :artwork_id }
  validates :project_id, :uniqueness => {:scope => [:x_location, :y_location], :message => 'Sorry, this X and Y has already been taken'}
end
