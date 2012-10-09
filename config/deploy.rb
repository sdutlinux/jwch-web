require 'bundler/capistrano'                

set :use_sudo, false
set :rvm_type, :system 
require 'rvm/capistrano'

set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

set :user, "group"  # ssh user 
set :application, "jwch-web"

# ssh to the deploy server
default_run_options[:pty] = true  # Must be set for the password prompt

set :repository,  "git@github.com:lidashuang/jwch-web.git"
set :deploy_via, :remote_cache
set :scm_username, 'lidashuang'
set :scm, :git
set :branch, "master"
ssh_options[:forward_agent] = true

# set path
set(:releases_path)     { File.join(deploy_to, version_dir) }
set(:shared_path)       { File.join(deploy_to, shared_dir) }
set(:current_path)      { File.join(deploy_to, current_dir) }
set(:release_path)      { File.join(releases_path, release_name) }

# set gems
set :bundle_without, [:development,:test]

namespace :rvm do
  task :trust_rvmrc do
    run "rvm rvmrc trust #{current_release}"
  end
end

# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start, :roles => :app do
    run "cd #{current_path}; 
         setsid puma  -e production -b unix:///tmp/cosm.sock 
         --pidfile #{current_path}/tmp/pids/puma.pid > /dev/null 2>&1"
  end

  task :stop, :roles => :app do
    run "kill -QUIT `cat #{current_path}/tmp/pids/puma.pid`"
  end

  task :restart, :roles => :app do
    run "kill -USR2 `cat #{current_path}/tmp/pids/puma.pid`"
  end
  task :config_file do
    run "ln -s  #{shared_path}/database.yml #{release_path}/config/database.yml"
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
