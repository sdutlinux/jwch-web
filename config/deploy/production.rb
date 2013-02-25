server "210.44.176.208", :app, :web, :db, :primary => true

set :port, 118
set :use_sudo, false
set :branch, "master"
set :rails_env, "production"
set :rvm_ruby_string, 'ruby-1.9.3-p327@jwch-web'
set :deploy_to, "/home/rails/#{application}"


#2012-10-23
after "bundle:install", "deploy:config_file", "deploy:migrate", "deploy:ln_backup_date"
after "deploy:create_symlink", "deploy:cleanup"

