directory "/home/simple-list-view/app" do
	mode 0755
	owner "app_user"
	group "app_user"
	action :create
end

git "/home/simple-list-view/app" do
	user "root"
	repository "https://github.com/wanderanimrod/infrastructure-as-code--simple-list-view.git"
	reference "master"
        revision  "HEAD"
	action :sync
end

template "/home/simple-list-view/app/simple=list-view/simple-list-view/settings.py" do
	source "settings.py.erb"
end

execute "install pip dependencies" do
	cwd "/home/simple-list-view/app"
	command "bash -c 'source /home/simple-list-view/virtualenv/bin/activate && pip install -r pip-requires.txt'"
	action :run
end

execute "Clean var/www" do
  	command "rm -rf /var/www"
  	action :run
end

execute "Make var/www" do
  	command "mkdir /var/www"
  	action :run
end

execute "Clean /var/log/simple-list-view" do
  	command "rm -rf /var/log/simple-list-view"
  	action :run
end

execute "Make var/log/simple-list-view" do
  	command "mkdir /var/log/simple-list-view"
  	action :run
end
