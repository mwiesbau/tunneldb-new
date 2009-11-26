# =============================================================================
# REQUIRED VARIABLES
# =============================================================================
set :application, "tunneldb-new"
set :repository,  "git@github.com:mwiesbau/tunneldb-new.git"

# =============================================================================
# ROLES
# =============================================================================
role :web, "webserver"                          # Your HTTP server, Apache/etc
role :app, "webserver"                          # This may be the same as your `Web` server
role :db,  "webserver", :primary => true # This is where Rails migrations will run
role :db,  "webserver"


# =============================================================================
# OPTIONAL VARIABLES
# =============================================================================
set :deploy_to, "/var/www/apps/tunneldb-new"
set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache
set :use_sudo, false
set :user, "webadmin"
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`




# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start {}
   task :stop {}
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
   
    [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end

   
 end