Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "10.10.1.10"
  config.vm.provision "shell", inline: "/vagrant/dockerProvision.sh"
  config.vm.provision "shell", inline: "mkdir /vagrant/db-data"
  config.vm.provision "shell", inline: "cd /vagrant && docker-compose up -d",
    run: "always"
end