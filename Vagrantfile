Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"
    config.vm.network "private_network", ip: "192.168.22.12"
    # config.vm.network "public_network"
    config.vm.synced_folder ".", "/vagrant", disabled: true
    config.vm.synced_folder ".", "/var/www"
    config.vm.provision "shell", inline: <<-SHELL
        export DEBIAN_FRONTEND=noninteractive
        apt-get update
        apt-get install -y git unzip wget
        curl -fsSL https://get.docker.com -o get-docker.sh
        sh get-docker.sh
        # or try apt install docker.io?
        usermod -aG docker vagrant
        apt install docker-compose -y
        dpkg -r --force-depends golang-docker-credential-helpers

        # enable color in console
        sed -i -r 's/#force_/force_/' /home/vagrant/.bashrc

        mkdir -p /var/www/persistent-data
        cd /var/www/docker/php
        docker build -t custom_php:1.0 ./
        cd ../
    SHELL
    config.vm.provision "shell", run: "always", inline: <<-SHELL
        cd /var/www/docker
        su vagrant
        docker-compose up --build --force-recreate -d
    SHELL
end
