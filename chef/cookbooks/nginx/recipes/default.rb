package "nginx" do
	action :install
end

template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
end

template "/etc/nginx/conf.d/simple-list-view-server.conf" do
  source "simple-list-view-server.conf.erb"
end

service "nginx" do
  action :restart
end
