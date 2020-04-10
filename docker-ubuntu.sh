### Install Docker Engine
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs)\
  stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

#If you would like to use Docker as a non-root user, 
#you should now consider adding your user to the “docker” group with something like:
sudo usermod -aG docker $USER
#~~~~~Remember to log out and back in for this to take effect!
#For no log out:
newgrp docker
###

### Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
###


####################################################
### Uninstall Docker Engine
#sudo apt-get purge docker-ce docker-ce-cli containerd.io

#sudo rm -rf /var/lib/docker
###

### Uninstall Docker Compose
#sudo rm /usr/local/bin/docker-compose
###
####################################################

## Info: 
# https://docs.docker.com/engine/install/ubuntu/
# https://docs.docker.com/compose/install/