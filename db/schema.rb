# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130520153739) do

  create_table "artworks", :force => true do |t|
    t.string   "title"
    t.string   "file"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "artworks", ["user_id"], :name => "index_artworks_on_user_id"

  create_table "grid_spaces", :force => true do |t|
    t.string   "name"
    t.integer  "starting_price"
    t.integer  "grid_location_x"
    t.integer  "grid_location_y"
    t.boolean  "is_empty"
    t.integer  "project_id"
    t.integer  "artwork_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "grid_spaces", ["artwork_id"], :name => "index_grid_spaces_on_artwork_id"
  add_index "grid_spaces", ["project_id"], :name => "index_grid_spaces_on_project_id"

  create_table "grids", :force => true do |t|
    t.integer  "artwork_id"
    t.integer  "project_id"
    t.integer  "x_location"
    t.integer  "y_location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "grids", ["artwork_id"], :name => "index_grids_on_artwork_id"
  add_index "grids", ["project_id"], :name => "index_grids_on_project_id"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image_url"
    t.string   "video_url"
    t.integer  "target_price"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "grid_space_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "projects", ["grid_space_id"], :name => "index_projects_on_grid_space_id"
  add_index "projects", ["user_id"], :name => "index_projects_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "salt"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "fish"
    t.boolean  "is_project_starter"
    t.integer  "project_id"
    t.integer  "artwork_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "users", ["artwork_id"], :name => "index_users_on_artwork_id"
  add_index "users", ["project_id"], :name => "index_users_on_project_id"

end
