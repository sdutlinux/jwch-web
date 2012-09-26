server "vps.sdutlinux.org", :app, :web, :db, :primary => true

set :use_sudo, false
set :branch, "master"
set :rails_env, "production"
set :rvm_ruby_string, 'ruby-1.9.3-p194@sdutlinux'
set :deploy_to, "/home/rails/#{application}"

# first 
after "bundle:install", "deploy:db_create"
after "deploy:db_create", "deploy:init"
after "deploy:init", "deploy:import_data"

after "deploy:create_symlink", "deploy:cleanup"

