# Create sqlite file for the application to use. 
# Other database engines will require a more complicated setup. You will have to deal with that during your own late nights, not Geek Night! 
file "/tmp/simple_list_view.db" do
  owner "root"
  group "root"
  mode "0755"
  action :create
end
