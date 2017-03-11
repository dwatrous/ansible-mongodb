# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :mongodb do |mongodb|
    mongodb.vm.hostname = "ansible-mongodb"

    # use insecure key for development environment (see http://software.danielwatrous.com/using-vagrant-to-build-a-lemp-stack/)
    mongodb.ssh.insert_key = false

    mongodb.vm.box = "ubuntu/trusty64"
    mongodb.vm.hostname = "ansible-mongodb"
    mongodb.vm.synced_folder ".", "/home/vagrant/src", mount_options: ["dmode=775,fmode=664"]
    #mongodb.vm.network "private_network", ip: "192.168.76.10" # uncomment this and choose an IP to allow other systems to access MongoDB
    mongodb.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    mongodb.vm.provider :virtualbox do |vb|
      vb.cpus = 1
      vb.memory = 512
    end

    mongodb.vm.provision "ansible", run: "always" do |ansible|
      ansible.playbook = "playbook.yml"
      ansible.sudo = false
    end
  end
end
