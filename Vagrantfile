# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "nixos-14.04-x86_64"
  config.vm.box_url = "./nixos-14.04-x86_64.box"

  config.vm.network "forwarded_port", guest: 80, host: 8081

  config.vm.network "private_network", ip: "192.168.33.108"

  config.ssh.forward_agent = true

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
  end

  config.vm.provision :shell, path: "./provision.sh"
end
