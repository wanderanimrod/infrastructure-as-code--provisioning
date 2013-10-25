infrastructure-as-code--provisioning
==========================================

This is the provisioning code repository for the Infrastructure as Code talk, GeekNight Kampala

Below are instructions on how to get the [infrastructure-as-code--simple-list-view](src: http:://google.com) django site up and running on your local
machine automatically, without you doing a lot of things.

### Prerequisites:

1. Vagrant
2. Ubuntu 12.04 image
3. Git

### 1. Setup Vagrant:

#### Install Vagrant:
_If you have vagrant already setup, skip this step._

Learn about what vagrant is and does, and install using the resources on
[this](http://docs.vagrantup.com/v2/getting-started/index.html) page

#### 2. Download a Vagrant Ubuntu Image 12.04 from 
[here](http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box)


### 3. Install Git
_If you have git already installed and setup, skip this step._

Learn about Git (and version control) and get instructions for installing it [here](http://git-scm.com/)


### 4. Get the code we used for the talk
Clone the __infrastructure-as-code--provisioning__ repository by running 
<code>git clone https://github.com/wanderanimrod/infrastructure-as-code--provisioning.git</code>. 
This will create a directory <code>infrastructure-as-code--provisioning</code>.


#### 5. Get the provisioning started.
Go into the <code>infrastructure-as-code--provisioning</code> directory created in the step above and get into 
<code>vagrant-stuff<code> directory. 

In there, open the file called <code>Vagrantfile</code>. Edit line <code>14<code> of the file that has 
the <code>config.vm.box_url = "/Users/Nimrod/dev-tools/vagrant/raring-server-cloudimg-i386-vagrant-disk1.box"</code>.
Replace the string in quotes with the path to the vagrant image you downloaded in step <code>2</code> above and
save the file.

Run the command <code>vagrant up</code>. If your vagrant setup was done correctly, you should see something
like this after some time.
<code>
<br>[default] VM booted and ready for use!
<br>[default] Configuring and enabling network interfaces...
<br>[default] Mounting shared folders...
<br>[default] -- /vagrant
</code>.

You should then be able to run <code>vagrant ssh</code> and see this in your prompt:
<code>vagrant@vagrant-ubuntu-raring-32:~$ </code>

#### Start provisioning your virtual machine to host the Simple-list-view application
Run the command <code>cd /vagrant/</code>. While there (and with a stable internet connection,
run <code>./bootstrap</code>. That should dump some output to your console saying it is installing a number
of things like curl, git, chef, and cloning the provisioning repository.

If the provisioning runs without any errors, you can now go to your browser to 
<code>127.0.0.1:8077</code> and see a blank page with the text __The Simple List View Django app is up an running.
Please get into your virtual machine and run the following commands__
