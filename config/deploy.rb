require 'bundler/capistrano'
require 'config/deploy/capistrano_database_yml'
#load 'deploy/assets'

set :user, 'rails'
set :domain, 'livezen.net'
set :applicationdir, '/home/rails/webapps/livezen'

set :scm, 'git'
set :repository,  "rails@livezen.net:repos/livezen.git"
set :branch, 'master'
set :git_shallow_clone, 1
set :scm_verbose, true

# roles (servers)
role :web, 'livezen.net'
role :app, 'livezen.net'
role :db,  'livezen.net', :primary => true

# deploy config
set :deploy_to, '/home/rails/webapps/livezen'
set :deploy_via, :export


after 'deploy:update_code' do
  # precompile assets for rails 3.1
  run 'cd #{release_path}; RAILS_ENV=production rake assets:precompile'
end

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end