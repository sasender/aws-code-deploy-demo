#!/bin/bash
# will install the dependencies to run the applications.

#install docker
sudo apt update
yes | sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable"
sudo apt update
apt-cache policy docker-ce
yes | sudo apt-get install docker-ce

# update user to not require sudo for docker commands
sudo usermod -aG docker ${USER}
su - ${USER}

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
