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
  { :title => 'John the Romantic', :description => 'John is turning 35 this year. Confirmed by various resources, we have been told that Rob desperately needs a new MacBook. Here is our chance to contribute to this wonderful gift.', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'mac_romantic.jpg')), :video_url => 'video.com', :target_price => '1000', :start_time => '2013-05-19 11:34:00 UTC', :end_time => '2013-06-19 11:34:00 UTC', :user => users[0] },
  { :title => 'Ben the DJ', :description => 'Ben Rocks! Buy a lovely MacBook for the king of the the club scene in London.', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'mac_dj.jpg')), :video_url => 'video.com', :target_price => '2000', :start_time => '2013-06-19 11:34:00 UTC', :end_time => '2013-07-19 11:34:00 UTC', :user => users[1] },
  { :title => 'Adam the Geek', :description => 'Adam is a real geek. No, seriously. Check out the dodgy stickers on his MacBook. Now he needs the real shit! Help us make this happen...', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'mac_geek.jpg')), :video_url => 'video.com', :target_price => '2000', :start_time => '2013-06-19 11:34:00 UTC', :end_time => '2013-07-19 11:34:00 UTC', :user => users[1] },
  { :title => 'Jackie the Student', :description => 'Jackie Chan arrived London couple of months back. His MacBook has been imported from China. Let s get him a real London version.', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'mac_student.jpg')), :video_url => 'video.com', :target_price => '2000', :start_time => '2013-06-19 11:34:00 UTC', :end_time => '2013-07-19 11:34:00 UTC', :user => users[1] },
  { :title => 'Dan the Instructor', :description => 'This man is a serious actor in the startup scene. He literally attends every single meetup, gathering, party around programming. Show your love by putting your artwork on his new MacBook.', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'mac_instructor.jpg')), :video_url => 'video.com', :target_price => '2000', :start_time => '2013-06-19 11:34:00 UTC', :end_time => '2013-07-19 11:34:00 UTC', :user => users[1] },
])

artworks = Artwork.create([
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_1.jpg')), :user => users[1] },
  { :title => 'The woman', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_2.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_3.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_4.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_5.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_6.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_7.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_8.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_9.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_10.jpg')), :user => users[1] },
  { :title => 'Lampshades', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_11.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_12.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_13.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_14.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_15.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_16.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_17.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_18.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_19.jpg')), :user => users[1] },
  { :title => 'The lady', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_20.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_21.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_22.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_23.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_24.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_25.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_26.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_27.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_28.jpg')), :user => users[1] },
  { :title => 'The flowers', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_29.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_30.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_31.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_32.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_33.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_34.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_35.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_36.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_37.jpg')), :user => users[1] },
  { :title => 'Restaurant', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_38.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_39.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_40.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_41.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_42.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_43.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_44.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_45.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_46.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_47.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_48.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_49.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_50.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_51.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_52.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_53.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_54.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_55.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_56.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_57.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_58.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_59.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_60.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_61.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_62.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_63.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_64.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_65.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_66.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_67.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_68.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_69.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_70.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_71.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_72.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_73.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_74.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_75.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_76.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_77.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_78.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_79.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_80.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_81.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_82.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_83.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_84.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_85.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_86.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_87.jpg')), :user => users[6] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_88.jpg')), :user => users[7] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_89.jpg')), :user => users[8] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_90.jpg')), :user => users[9] },

  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_91.jpg')), :user => users[1] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_92.jpg')), :user => users[2] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_93.jpg')), :user => users[3] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_94.jpg')), :user => users[4] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_95.jpg')), :user => users[5] },
  { :title => 'Birthday slogan', :file => File.open(File.join(Rails.root, 'db', 'fixtures', 'img_96.jpg')), :user => users[6] },
])

grids = Grid.create([
  { :artwork_id => '1', :project_id => '1', :y_location => '1', :x_location => '1', :Paidfor => false },
  { :artwork_id => '2', :project_id => '1', :y_location => '1', :x_location => '2', :Paidfor => false },
  { :artwork_id => '3', :project_id => '1', :y_location => '1', :x_location => '3', :Paidfor => false },
  { :artwork_id => '4', :project_id => '1', :y_location => '1', :x_location => '4', :Paidfor => false },
  { :artwork_id => '5', :project_id => '1', :y_location => '1', :x_location => '5', :Paidfor => false },
  { :artwork_id => '6', :project_id => '1', :y_location => '1', :x_location => '6', :Paidfor => false },
  { :artwork_id => '7', :project_id => '1', :y_location => '1', :x_location => '7', :Paidfor => false },
  { :artwork_id => '8', :project_id => '1', :y_location => '1', :x_location => '8', :Paidfor => false },
  { :artwork_id => '9', :project_id => '1', :y_location => '1', :x_location => '9', :Paidfor => false },
  { :artwork_id => '10', :project_id => '1', :y_location => '1', :x_location => '10', :Paidfor => false },
  { :artwork_id => '11', :project_id => '1', :y_location => '1', :x_location => '11', :Paidfor => false },
  { :artwork_id => '12', :project_id => '1', :y_location => '1', :x_location => '12', :Paidfor => false },

  { :artwork_id => '13', :project_id => '1', :y_location => '2', :x_location => '1', :Paidfor => false },
  { :artwork_id => '14', :project_id => '1', :y_location => '2', :x_location => '2', :Paidfor => false },
  { :artwork_id => '15', :project_id => '1', :y_location => '2', :x_location => '3', :Paidfor => false },
  { :artwork_id => '16', :project_id => '1', :y_location => '2', :x_location => '4', :Paidfor => false },
  { :artwork_id => '17', :project_id => '1', :y_location => '2', :x_location => '5', :Paidfor => false },
  { :artwork_id => '18', :project_id => '1', :y_location => '2', :x_location => '6', :Paidfor => false },
  { :artwork_id => '19', :project_id => '1', :y_location => '2', :x_location => '7', :Paidfor => false },
  { :artwork_id => '20', :project_id => '1', :y_location => '2', :x_location => '8', :Paidfor => false },
  { :artwork_id => '21', :project_id => '1', :y_location => '2', :x_location => '9', :Paidfor => false },
  { :artwork_id => '22', :project_id => '1', :y_location => '2', :x_location => '10', :Paidfor => false },
  { :artwork_id => '23', :project_id => '1', :y_location => '2', :x_location => '11', :Paidfor => false },
  { :artwork_id => '24', :project_id => '1', :y_location => '2', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '25', :project_id => '1', :y_location => '3', :x_location => '1', :Paidfor => false },
  { :artwork_id => '26', :project_id => '1', :y_location => '3', :x_location => '2', :Paidfor => false },
  { :artwork_id => '27', :project_id => '1', :y_location => '3', :x_location => '3', :Paidfor => false },
  { :artwork_id => '28', :project_id => '1', :y_location => '3', :x_location => '4', :Paidfor => false },
  { :artwork_id => '29', :project_id => '1', :y_location => '3', :x_location => '5', :Paidfor => false },
  { :artwork_id => '30', :project_id => '1', :y_location => '3', :x_location => '6', :Paidfor => false },
  { :artwork_id => '31', :project_id => '1', :y_location => '3', :x_location => '7', :Paidfor => false },
  { :artwork_id => '32', :project_id => '1', :y_location => '3', :x_location => '8', :Paidfor => false },
  { :artwork_id => '33', :project_id => '1', :y_location => '3', :x_location => '9', :Paidfor => false },
  { :artwork_id => '34', :project_id => '1', :y_location => '3', :x_location => '10', :Paidfor => false },
  { :artwork_id => '35', :project_id => '1', :y_location => '3', :x_location => '11', :Paidfor => false },
  { :artwork_id => '36', :project_id => '1', :y_location => '3', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '37', :project_id => '1', :y_location => '4', :x_location => '1', :Paidfor => false },
  { :artwork_id => '38', :project_id => '1', :y_location => '4', :x_location => '2', :Paidfor => false },
  { :artwork_id => '39', :project_id => '1', :y_location => '4', :x_location => '3', :Paidfor => false },
  { :artwork_id => '40', :project_id => '1', :y_location => '4', :x_location => '4', :Paidfor => false },
  { :artwork_id => '41', :project_id => '1', :y_location => '4', :x_location => '5', :Paidfor => false },


  { :artwork_id => '44', :project_id => '1', :y_location => '4', :x_location => '8', :Paidfor => false },
  { :artwork_id => '45', :project_id => '1', :y_location => '4', :x_location => '9', :Paidfor => false },
  { :artwork_id => '46', :project_id => '1', :y_location => '4', :x_location => '10', :Paidfor => false },
  { :artwork_id => '47', :project_id => '1', :y_location => '4', :x_location => '11', :Paidfor => false },
  { :artwork_id => '48', :project_id => '1', :y_location => '4', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '49', :project_id => '1', :y_location => '5', :x_location => '1', :Paidfor => false },
  { :artwork_id => '50', :project_id => '1', :y_location => '5', :x_location => '2', :Paidfor => false },
  { :artwork_id => '51', :project_id => '1', :y_location => '5', :x_location => '3', :Paidfor => false },
  { :artwork_id => '52', :project_id => '1', :y_location => '5', :x_location => '4', :Paidfor => false },
  { :artwork_id => '53', :project_id => '1', :y_location => '5', :x_location => '5', :Paidfor => false },


  { :artwork_id => '56', :project_id => '1', :y_location => '5', :x_location => '8', :Paidfor => false },
  { :artwork_id => '57', :project_id => '1', :y_location => '5', :x_location => '9', :Paidfor => false },
  { :artwork_id => '58', :project_id => '1', :y_location => '5', :x_location => '10', :Paidfor => false },
  { :artwork_id => '59', :project_id => '1', :y_location => '5', :x_location => '11', :Paidfor => false },
  { :artwork_id => '60', :project_id => '1', :y_location => '5', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '61', :project_id => '1', :y_location => '6', :x_location => '1', :Paidfor => false },
  { :artwork_id => '62', :project_id => '1', :y_location => '6', :x_location => '2', :Paidfor => false },
  { :artwork_id => '63', :project_id => '1', :y_location => '6', :x_location => '3', :Paidfor => false },
  { :artwork_id => '64', :project_id => '1', :y_location => '6', :x_location => '4', :Paidfor => false },
  { :artwork_id => '65', :project_id => '1', :y_location => '6', :x_location => '5', :Paidfor => false },
  { :artwork_id => '66', :project_id => '1', :y_location => '6', :x_location => '6', :Paidfor => false },
  { :artwork_id => '67', :project_id => '1', :y_location => '6', :x_location => '7', :Paidfor => false },
  { :artwork_id => '68', :project_id => '1', :y_location => '6', :x_location => '8', :Paidfor => false },
  { :artwork_id => '69', :project_id => '1', :y_location => '6', :x_location => '9', :Paidfor => false },
  { :artwork_id => '70', :project_id => '1', :y_location => '6', :x_location => '10', :Paidfor => false },
  { :artwork_id => '71', :project_id => '1', :y_location => '6', :x_location => '11', :Paidfor => false },
  { :artwork_id => '72', :project_id => '1', :y_location => '6', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '73', :project_id => '1', :y_location => '7', :x_location => '1', :Paidfor => false },
  { :artwork_id => '74', :project_id => '1', :y_location => '7', :x_location => '2', :Paidfor => false },
  { :artwork_id => '75', :project_id => '1', :y_location => '7', :x_location => '3', :Paidfor => false },
  { :artwork_id => '76', :project_id => '1', :y_location => '7', :x_location => '4', :Paidfor => false },
  { :artwork_id => '77', :project_id => '1', :y_location => '7', :x_location => '5', :Paidfor => false },
  { :artwork_id => '78', :project_id => '1', :y_location => '7', :x_location => '6', :Paidfor => false },
  { :artwork_id => '79', :project_id => '1', :y_location => '7', :x_location => '7', :Paidfor => false },
  { :artwork_id => '80', :project_id => '1', :y_location => '7', :x_location => '8', :Paidfor => false },
  { :artwork_id => '81', :project_id => '1', :y_location => '7', :x_location => '9', :Paidfor => false },
  { :artwork_id => '82', :project_id => '1', :y_location => '7', :x_location => '10', :Paidfor => false },
  { :artwork_id => '83', :project_id => '1', :y_location => '7', :x_location => '11', :Paidfor => false },
  { :artwork_id => '84', :project_id => '1', :y_location => '7', :x_location => '12', :Paidfor => false },
  
  { :artwork_id => '85', :project_id => '1', :y_location => '8', :x_location => '1', :Paidfor => false },
  { :artwork_id => '86', :project_id => '1', :y_location => '8', :x_location => '2', :Paidfor => false },
  { :artwork_id => '87', :project_id => '1', :y_location => '8', :x_location => '3', :Paidfor => false },
  { :artwork_id => '88', :project_id => '1', :y_location => '8', :x_location => '4', :Paidfor => false },
  { :artwork_id => '89', :project_id => '1', :y_location => '8', :x_location => '5', :Paidfor => false },
  { :artwork_id => '90', :project_id => '1', :y_location => '8', :x_location => '6', :Paidfor => false },
  { :artwork_id => '91', :project_id => '1', :y_location => '8', :x_location => '7', :Paidfor => false },
  { :artwork_id => '92', :project_id => '1', :y_location => '8', :x_location => '8', :Paidfor => false },
  { :artwork_id => '93', :project_id => '1', :y_location => '8', :x_location => '9', :Paidfor => false },
  { :artwork_id => '94', :project_id => '1', :y_location => '8', :x_location => '10', :Paidfor => false },
  { :artwork_id => '95', :project_id => '1', :y_location => '8', :x_location => '11', :Paidfor => false },
  { :artwork_id => '96', :project_id => '1', :y_location => '8', :x_location => '12', :Paidfor => false },
])
