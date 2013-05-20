class Artwork < ActiveRecord::Base
  attr_accessible :file, :title, :user, :project_id
  
  belongs_to :user
  has_many :grids
  has_many :projects, through: :grids

  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
