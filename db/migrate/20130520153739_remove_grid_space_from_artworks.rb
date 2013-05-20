class RemoveGridSpaceFromArtworks < ActiveRecord::Migration
  def up
    remove_column :artworks, :grid_space_id
  end

  def down
    add_column :artworks, :grid_space_id, :integer
  end
end
