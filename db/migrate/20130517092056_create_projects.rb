class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :video_url
      t.integer :target_price
      t.datetime :start_time
      t.datetime :end_time
      t.references :grid_space
      t.references :user

      t.timestamps
    end
    add_index :projects, :grid_space_id
    add_index :projects, :user_id
  end
end
