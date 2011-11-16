set :application, "ttlunch2012"
set :user, "deploy"
set :domain, "ttlunch2012.com"
set :repository,  "git@github.com:stevanl/ttl.git"
set :repository_cache, "git_master"
set :use_sudo, false
set :deploy_via, :remote_cache
set :scm, :git
default_run_options[:pty] = true
default_run_options[:shell] = false
# Automatically symlink these directories from curent/public to shared/public.
set :app_symlinks, %w(files)
set :rails_config_files, %w(database.yml)

task :s do 
   set :rails_env, :test
   set :deploy_to, "/home/deploy/#{application}/stage"
end


task :l do
  set :rails_env, :production
  set :deploy_to, "/home/deploy/#{application}/live"
end

role :app, "ttlunch2012.com"
role :web, "ttlunch2012.com"
role :db,  "ttlunch2012.com", :primary => true

after "deploy:update_code", "deploy:copy_config_files"

namespace :deploy do
	desc "Copy config files from shared/config to release dir"
  task :copy_config_files do
    rails_config_files.each do |filename|
      run "cp #{shared_path}/config/#{filename} #{release_path}/config/#{filename}"
    end
  end
  
  task :generate_assets, :roles => :web do
    run "cd #{release_path} && /usr/local/bin/jammit config/assets.yml"
  end
  
  task :start, :roles => :app do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    sudo "/usr/local/nginx/sbin/nginx"
    run "echo \"NGINX HAS STARTED\""
    run "echo \"WEBSITE HAS BEEN DEPLOYED\""
  end
  
  task :stop, :roles => :app do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    sudo "/usr/local/nginx/sbin/nginx -s stop"
    run "echo \"NGINX HAS STOPPED\""
  end
  
  task :restart, :roles => :app do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    run "cd #{release_path}; bundle exec rake assets:precompile" 
    sudo "/usr/local/nginx/sbin/nginx -s reload"
    run "echo \"WEBSITE HAS BEEN DEPLOYED\""
  end

end
