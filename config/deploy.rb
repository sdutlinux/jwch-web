set :application, "jwch-web"

set :use_sudo, false

set :scm, :git
set :repository,  "git@github.com:lidashuang/jwch-web.git"
set :branch, "master"
set :user, "lidashuang" 
set :deploy_via, :remote_cache
default_run_options[:pty] = true  # Must be set for the password prompt
ssh_options[:forward_agent] = true

set :deploy_to, "/home/group/#{application}"
server '211.64.30.56', :app, :web, :db, :primary => true
set :keep_releases, 2



role :web, "Nginx"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
