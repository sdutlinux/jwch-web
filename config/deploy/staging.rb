server "210.44.176.208", :app, :web, :db, :primary => true

set :port, 80
set :use_sudo, false
set :branch, "master"
set :rails_env, "staging"
set :rvm_ruby_string, 'ruby-1.9.3-p125@jwch'
set :deploy_to, "/home/group/#{application}"

# first 
after "bundle:install", "deploy:db_create"
after "deploy:db_create", "deploy:init"
after "deploy:init", "deploy:import_data"
after "deploy:create_symlink", "deploy:cleanup"

