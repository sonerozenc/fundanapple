User.destroy_all

users = User.create([
  { :first_name => 'Soner', :last_name => 'Ozenc', :email => 'sonerozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'true', :password => '123', :password_confirmation => '123' },
  { :first_name => 'Oner', :last_name => 'Ozenc', :email => 'onerozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '1234', :password_confirmation => '1234' },
  { :first_name => 'John', :last_name => 'Ozenc', :email => 'johnozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '123', :password_confirmation => '123' },
  { :first_name => 'Jack', :last_name => 'Ozenc', :email => 'jackozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '1234', :password_confirmation => '1234' },
  { :first_name => 'James', :last_name => 'Ozenc', :email => 'jamesozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '123', :password_confirmation => '123' },
  { :first_name => 'Charlie', :last_name => 'Ozenc', :email => 'charlieozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '1234', :password_confirmation => '1234' },
  { :first_name => 'Dan', :last_name => 'Ozenc', :email => 'danozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '123', :password_confirmation => '123' },
  { :first_name => 'Ben', :last_name => 'Ozenc', :email => 'benozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '1234', :password_confirmation => '1234' },
  { :first_name => 'Henry', :last_name => 'Ozenc', :email => 'henryozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '123', :password_confirmation => '123' },
  { :first_name => 'Debra', :last_name => 'Ozenc', :email => 'debraozenc@gmail.com', :address => '24 St Francis Rd, SE22 8DE, London, UK', :phone => '+44 779 287 00 07', :is_project_starter => 'false', :password => '1234', :password_confirmation => '1234' },

])

projects = Project.create([
  { :title => 'Rob 35th birthday present', :description => 'We are getting a Macbook for his birthday', :image_url => 'image.com', :video_url => 'video.com', :target_price => '1000', :start_time => '2013-05-19 11:34:00 UTC', :end_time => '2013-06-19 11:34:00 UTC', :user => users[0] },
  { :title => 'James graduation present', :description => 'We are getting a Macbook for this very special day', :image_url => 'image.com', :video_url => 'video.com', :target_price => '2000', :start_time => '2013-06-19 11:34:00 UTC', :end_time => '2013-07-19 11:34:00 UTC', :user => users[1] },
])

grid_spaces = GridSpace.create([
  { :name => '1-1', :grid_location_x => '1', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '2-1', :grid_location_x => '2', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '3-1', :grid_location_x => '3', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '1-2', :grid_location_x => '1', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '2-2', :grid_location_x => '2', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '3-2', :grid_location_x => '3', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '1-3', :grid_location_x => '1', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '2-3', :grid_location_x => '2', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '3-3', :grid_location_x => '3', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[0] },
  { :name => '1-1', :grid_location_x => '1', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '2-1', :grid_location_x => '2', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '3-1', :grid_location_x => '3', :grid_location_y => '1', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '1-2', :grid_location_x => '1', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '2-2', :grid_location_x => '2', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '3-2', :grid_location_x => '3', :grid_location_y => '2', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '1-3', :grid_location_x => '1', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '2-3', :grid_location_x => '2', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[1] },
  { :name => '3-3', :grid_location_x => '3', :grid_location_y => '3', :is_empty => true, :starting_price => '10', :project => projects[1] },
])

artworks = Artwork.create([
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog1.jpg')), :grid_space => grid_spaces[0], :user => users[1] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog2.jpg')), :grid_space => grid_spaces[1], :user => users[2] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog3.gif')), :grid_space => grid_spaces[2], :user => users[3] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog4.jpg')), :grid_space => grid_spaces[3], :user => users[4] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog5.jpg')), :grid_space => grid_spaces[4], :user => users[5] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog6.jpg')), :grid_space => grid_spaces[5], :user => users[6] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog7.jpg')), :grid_space => grid_spaces[6], :user => users[7] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog8.jpg')), :grid_space => grid_spaces[7], :user => users[8] },
  { :title => 'birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'dog9.jpg')), :grid_space => grid_spaces[8], :user => users[9] },
])
