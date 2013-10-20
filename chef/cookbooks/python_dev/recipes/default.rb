execute "update os package information" do
	command "apt-get update"
	action :run
end

%w{build-essential python-setuptools python-dev python-pip libpq-dev libxml2 libxml2-dev libxslt1-dev}.each do |pkg|
      package pkg do
        action :install
      end
end

execute "virtualenv" do
	command "pip install virtualenv"
end

execute "create_virtualenv" do
	cwd "/home/simple-list-view"
	command "virtualenv --no-site-packages virtualenv"
end
