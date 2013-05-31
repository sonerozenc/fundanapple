module ApplicationHelper

	def find_grid_id_by_project_x_y(project, x, y)
		grid = Grid.where("project_id = ? AND x_location = ? AND y_location = ?", project, x, y).limit(1).first
		if grid
			grid.id
		else
			false
		end
	end

  def find_artwork_by_grid_space(project, x_location, y_location)
    grid = Grid.where("project_id = ? AND x_location = ? AND y_location = ?", project, x_location, y_location).limit(1).first
    if grid
    	Artwork.find(grid.artwork_id)
    else
    	false
    end
  end

end
