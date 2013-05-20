class Project < ActiveRecord::Base
  attr_accessible :description, :end_time, :image_url, :start_time, :target_price, :title, :video_url, :user

  has_many :grids
  has_many :artworks, through: :grids
  belongs_to :user

  accepts_nested_attributes_for :artworks

end
