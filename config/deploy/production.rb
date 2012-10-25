server "210.44.176.208", :app, :web, :db, :primary => true

set :port, 80
set :use_sudo, false
set :branch, "master"
set :rails_env, "production"
set :rvm_ruby_string, 'ruby-1.9.3-p286@jwch-web'
set :deploy_to, "/home/rails/#{application}"


# 2012-10-01
#after "bundle:install", "deploy:config_file"
#after "deploy:config_file", "deploy:create_database"
#after "deploy:create_database", "deploy:migrate"
#after "deploy:migrate", "deploy:init"
#after "deploy:init", "deploy:import_data"
#after "deploy:create_symlink", "deploy:cleanup"

# 2012-10-16 
# after "bundle:install", "deploy:config_file", "deploy:migrate", "deploy:import_xml"
# after "deploy:create_symlink", "deploy:cleanup"

#2012-10-18 
#after "bundle:install", "deploy:config_file", "deploy:migrate"
#after "deploy:create_symlink", "deploy:cleanup"

#2012-10-23
after "bundle:install", "deploy:config_file", "deploy:migrate", "deploy:ln_backup_date","deploy:import_links"
after "deploy:create_symlink", "deploy:cleanup"

