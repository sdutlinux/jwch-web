require 'bundler/capistrano'                
#require "whenever/capistrano"

set :whenever_environment, defer { stage }
set :whenever_identifier, defer { "#{application}_#{stage}" }
set :whenever_command, "bundle exec whenever"

set :use_sudo, false
set :rvm_type, :system 
require 'rvm/capistrano'

set :stages, %w(staging production)
set :default_stage, "production"
require 'capistrano/ext/multistage'

set :user, "rails"  # ssh user 
set :application, "jwch-web"

# ssh to the deploy server
default_run_options[:pty] = true  # Must be set for the password prompt

# set :repository,  "git://github.com/lidashuang/jwch-web.git"
set :repository,  "git@210.44.176.247:~/jwch-web.git"
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

after "deploy:restart", "deploy:cleanup"

namespace :deploy do
  task :start do 
    run "cd #{current_path}; bundle exec thin start -C /home/rails/#{application}.yml"
  end

  task :stop do 
    run "cd #{current_path}; bundle exec thin stop -C /home/rails/#{application}.yml"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    #run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "cd #{current_path}; bundle exec thin restart -C /home/rails/#{application}.yml"
  end

  task :config_file do
    run "ln -s  #{shared_path}/database.yml #{release_path}/config/database.yml"
  end

  task :ln_backup_date do
    run "ln -s  #{shared_path}/workflow_pic #{release_path}/public/editor/UploadFile"
    run "ln -s  #{shared_path}/upload_old #{release_path}/public/upload_old"
    run "ln -s  #{shared_path}/uploads #{release_path}/public/uploads"
    run "ln -s  #{shared_path}/yzgc #{release_path}/public/yzgc"
    run "ln -s  #{shared_path}/book #{release_path}/public/book"
    run "ln -s  #{shared_path}/blog #{release_path}/public/blog"
  end
end
