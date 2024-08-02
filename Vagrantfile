# Vagrantfile
Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/ubuntu2004"
    config.vm.network "private_network", type: "dhcp"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    config.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
  end
  