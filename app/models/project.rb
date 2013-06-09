class Project < ActiveRecord::Base
  attr_accessible :description, :end_time, :image_url, :start_time, :target_price, :title, :video_url, :user, :file

  has_many :grids
  has_many :artworks, through: :grids
  belongs_to :user

  accepts_nested_attributes_for :artworks

	has_attached_file :file, 
										styles: { medium: '500x500>', thumb: '80x80>'},
	    							path: ":rails_root/public/system/:attachment/:id/:style/:filename",
	    							url: "/system/:attachment/:id/:style/:filename"

end
