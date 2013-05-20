class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :file
      t.references :grid_space
      t.references :user

      t.timestamps
    end
    add_index :artworks, :grid_space_id
    add_index :artworks, :user_id
  end
end
