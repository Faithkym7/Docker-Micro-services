Vagrant.configure("2") do |config|
  config.vm.define "webserver" do |webserver|
    webserver.vm.box = "geerlingguy/ubuntu2004"
    webserver.vm.network "private_network", ip: "192.168.33.10"
    webserver.vm.network "forwarded_port", guest: 3000, host: 3000
    webserver.vm.network "forwarded_port", guest: 5000, host: 5000
    webserver.vm.network "forwarded_port", guest: 27017, host: 27017
    webserver.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
    webserver.vm.hostname = "webserver"
    webserver.vm.synced_folder ".", "/vagrant"
  end

  config.vm.define "database" do |database|
    database.vm.box = "geerlingguy/ubuntu2004"
    database.vm.network "private_network", ip: "192.168.33.11"
    database.vm.provision "ansible" do |ansible|
      ansible.playbook = "playbook.yml"
    end
    database.vm.hostname = "database"
    database.vm.synced_folder ".", "/vagrant"
  end
end
