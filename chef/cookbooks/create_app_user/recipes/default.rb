user "app_user" do
        action :create
        home "/home/simple-list-view"
        system true
        password "$1$.WsplVWP$vZGPs6vxS0FmQ0dh83M541"
end

user "app_user" do
        action :modify
        home "/home/simple-list-view"
        supports :manage_home=>true
end

directory "/home/simple-list-view" do
        owner "app_user"
        group "app_user"
        mode "0755"
        action :create
end
