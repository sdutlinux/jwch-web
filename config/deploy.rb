#conding: utf-8
require 'bundler/capistrano'                #添加之后部署时会调用bundle install， 如果不需要就可以注释掉

set :use_sudo, false
set :rvm_type, :system 
require 'rvm/capistrano'
set :user, "lidashuang" 

set :application, "jwch-web"
default_run_options[:pty] = true  # Must be set for the password prompt

set :repository,  "git@github.com:lidashuang/jwch-web.git"
set :deploy_via, :remote_cache
set :scm, :git
set :scm_username, 'lidashuang'
set :branch, "master"
ssh_options[:forward_agent] = true

set :deploy_to, "/home/group/#{application}"
# set path
set(:releases_path)     { File.join(deploy_to, version_dir) }
set(:shared_path)       { File.join(deploy_to, shared_dir) }
set(:current_path)      { File.join(deploy_to, current_dir) }
set(:release_path)      { File.join(releases_path, release_name) }
# set :current_public,   "/home/group/#{application}/current/public"
# set :shared_path,      "/home/group/#{application}/shared"

server '211.64.30.55', :app, :web, :db, :primary => true
set :rails_env, "production"
set :rvm_ruby_string, 'ruby-1.9.3-p194@jwch-web'
set :keep_releases, 2
set :bundle_without, [:development,:test] 

# role :web, "Nginx"                          # Your HTTP server, Apache/etc
# role :app, "your app-server here"                          # This may be the same as your `Web` server
# role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
# role :db,  "your slave db-server here"



# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end

  task :create_database do
    run "cd #{release_path}; bundle exec rake db:create RAILS_ENV=#{rails_env}"
  end

  task :init do
  	run "cd #{release_path}; bundle exec rake init:all RAILS_ENV=#{rails_env}"
  end

  task :import_data do
  	run "cd #{release_path}; bundle exec rake import:all RAILS_ENV=#{rails_env}"
  end
end
