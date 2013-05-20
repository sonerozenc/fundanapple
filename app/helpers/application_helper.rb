module ApplicationHelper

  def find_artwork_by_grid_space(project, x_location, y_location)
    grid = Grid.where("project_id = ? AND x_location = ? AND y_location = ?", project, x_location, y_location).limit(1).first
    if grid
    	Artwork.find(grid.artwork_id)
    else
    	false
    end
  end

end
