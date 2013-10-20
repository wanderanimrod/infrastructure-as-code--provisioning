execute "Sync database" do
	cwd "/home/simple-list-view/app"
	command "bash -c 'source /home/simple-list-view/virtualen/bin/activate && ./manage.py syncdb --noinput'"
	action :run
end

