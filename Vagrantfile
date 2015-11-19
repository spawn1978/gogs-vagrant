# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.name = "gogs"
    v.memory = 1024
    v.cpus = 2
  end

  config.vm.box_check_update = true

  #Gogs web
  config.vm.network "forwarded_port", guest: 3000, host: 3000

  #Gogs ssh
  config.vm.network "forwarded_port", guest: 3022, host: 3022

  #SSH
  config.ssh.forward_agent = true

  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

  # config.vm.synced_folder "./gogs", "/var/gogs"

  #Provision
  config.vm.provision "shell", path: "ubuntu-trusty64-provision.sh"

end
