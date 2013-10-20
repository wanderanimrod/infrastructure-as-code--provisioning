#!/bin/bash

echo -e "\n\n****************** Bootstrapping chef *********************** "

echo -e "\n\nInstalling chef ..."
#curl -L https://www.opscode.com/chef/install.sh | sudo bash

#nInstall git so that you can clone the provisioning repository onto the machine"
echo -e "\n\nInstalling git ..."
apt-get install git -y

echo -e "\n\nCloning provisioning repository ..."
mkdir -p /home/provisioning
git clone https://github.com/wanderanimrod/infrastructure-as-code--provisioning.git /home/provisioning

echo -e "\n\nConfiguring chef-solo paths ..."
mkdir -p /etc/chef
touch /etc/chef/solo.rb
echo "cookbook_path    \"/home/provisioning/chef/cookbooks\"" >> /etc/chef/solo.rb

