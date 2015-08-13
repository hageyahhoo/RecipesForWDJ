# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|

  config.vm.hostname = "are"
  config.vm.box = "opscode-centos-6.5"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef_provisionerless.box"
  config.vm.network :private_network, ip: "192.168.39.10"

  config.omnibus.chef_version = '12.3.0'
  config.vm.provision :chef_solo do |chef|
  end 
end
