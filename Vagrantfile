Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.50.4"
  config.vm.provision "shell", inline: "/vagrant/dockerProvision.sh"
  config.vm.provision "shell", inline: "cd /vagrant && docker-compose up -d",
    run: "always"
end