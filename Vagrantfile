# Vagrantfile based on https://github.com/davekerber/vagrant-example/blob/master/Vagrantfile
Vagrant.configure("2") do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Virtual box RAM and CPU configuration
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  if File.file? (File.expand_path '~/vagrant_setup.rb')
    require '~/vagrant_setup.rb'
  else 
    require 'ostruct'
    USER_CONFIG = OpenStruct.new(data_dir: (File.expand_path '~'))
  end

  # Share folder configuration
  if USER_CONFIG.data_dir
     config.vm.synced_folder USER_CONFIG.data_dir, "/host_folder"
  end 

  # Port forwarding configuration for Rails development
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Network configuration DHCP
  #config.vm.network :public_network

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file  = "base.pp"
    puppet.options = "--verbose --debug"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file  = "rvm.pp"
    puppet.module_path = 'modules'
  end
end
