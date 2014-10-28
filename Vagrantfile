Vagrant.configure("2") do |config|

    config.vm.box = "precise64"
	config.vm.box_url = "http://files.vagrantup.com/precise64.box"
	config.vm.synced_folder "devenv", "/home/vagrant/devenv"
	config.vm.network "public_network"
	config.vm.network "private_network", type: "dhcp"

	config.vm.network "forwarded_port", guest: 8888, host: 8888
	config.vm.network "forwarded_port", guest: 8887, host: 8887
	
	config.vm.provider :virtualbox do |vb|
		vb.customize ['modifyvm', :id, '--usb', 'on']
		vb.customize ["modifyvm", :id, "--memory", "512"]
		vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
	end
  
	config.vm.provision :shell, :path => "init.sh"

end
