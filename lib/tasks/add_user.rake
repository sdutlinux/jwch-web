namespace :add_user do
  desc "add_us"
  task :lidashuang => :environment  do
    User.create!(:name => 'lidashuang', :admin => true, :password => "123.com")
  end
end
