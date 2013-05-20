class CreateGrids < ActiveRecord::Migration
  def change
    create_table :grids do |t|
      t.references :artwork
      t.references :project
      t.integer :x_location
      t.integer :y_location

      t.timestamps
    end
    add_index :grids, :artwork_id
    add_index :grids, :project_id
  end
end
