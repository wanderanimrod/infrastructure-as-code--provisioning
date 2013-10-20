execute "Sync database" do
	cwd "/home/simple-list-view/app/simple_list_view"
	command "bash -c 'source /home/simple-list-view/virtualenv/bin/activate && ./manage.py syncdb --noinput'"
	action :run
end

