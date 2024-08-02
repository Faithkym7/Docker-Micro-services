# Vagrantfile
Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"

    config.vm.network "forwarded_port", guest: 3000, host: 3000
    config.vm.network "forwarded_port", guest: 5000, host: 5000
    config.vm.network "forwarded_port", guest: 27017, host: 27017

    config.vm.network "private_network", ip: "192.168.33.10"

    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end

    config.vm.hostname = "vagrant"
  
    config.vm.synced_folder ".", "/vagrant"    
  end
  