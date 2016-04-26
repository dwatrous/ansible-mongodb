# -*- mode: ruby -*-
# vi: set ft=ruby :
 
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
 
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # use insecure key for development environment (see http://software.danielwatrous.com/using-vagrant-to-build-a-lemp-stack/)
  config.ssh.insert_key = false

  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "ansible-mongodb"
  config.vm.synced_folder ".", "/home/vagrant/src", mount_options: ["dmode=775,fmode=664"]
  config.vm.provision :shell, path: "bootstrap.sh"
  #config.vm.network "private_network", ip: "192.168.76.10" # uncomment this and choose an IP to allow other systems to access MongoDB
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.provider :virtualbox do |vb|
    vb.cpus = 1
    vb.memory = 512
  end
end
