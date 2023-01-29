#!/bin/bash
#Install docker
sudo apt-get update -y
sudo apt-get install git wget curl -y
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker ubuntu
#Install Docker compose
#sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.14.1/docker-compose-linux-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
git clone https://github.com/sadofrazer/tower.git
cd tower/
tar -xzvf awx.tar.gz -C ~/
cd ~/.awx/awxcompose/
docker-compose up -d
