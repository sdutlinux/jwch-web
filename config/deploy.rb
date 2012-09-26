require 'bundler/capistrano'                

set :use_sudo, false
set :rvm_type, :system 
require 'rvm/capistrano'

set :stages, %w(staging production)
set :default_stage, "staging"
require 'capistrano/ext/multistage'

set :user, "lidashuang"  # ssh user 
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

# after "bundle:install", "deploy:create_database"
# after "deploy:create_database", "deploy:migrate"
# after "deploy:migrate", "deploy:init"
# after "deploy:init", "deploy:import_data"

# after "deploy:create_symlink", "deploy:cleanup"
