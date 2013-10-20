#!/bin/bash

echo -e "\n\n****************** Bootstrapping chef *********************** "

echo -e "\n\nInstalling chef ..."
#curl -L https://www.opscode.com/chef/install.sh | sudo bash

#nInstall git so that you can clone the provisioning repository onto the machine"
echo -e "\n\nInstalling git ..."
apt-get install git -y

echo -e "\n\nCloning provisioning repository ..."
rm -r /home/provisioning
mkdir -p /home/provisioning
git clone https://github.com/wanderanimrod/infrastructure-as-code--provisioning.git /home/provisioning

echo -e "\n\nConfiguring chef-solo paths ..."
mkdir -p /etc/chef
rm -r /etc/chef/solo.rb
touch /etc/chef/solo.rb
echo "cookbook_path    \"/home/provisioning/chef/cookbooks\"" >> /etc/chef/solo.rb
echo "role_path    \"/home/provisioning/chef/roles\"" >> /etc/chef/solo.rb

echo -e "\n\nInstalling postgres without confuguration. Does not install within the chef run due to a bug"
apt-get install postgresql-9.1 -y

echo -e "\n\nProvisioning machine ..."
chef-solo -o role[all_in_one]
