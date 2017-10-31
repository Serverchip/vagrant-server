#!/usr/bin/env bash

# Add Docker repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# Install Docker
apt-get update
apt-get -y install docker-ce

# Install pip
apt-get install python-dev python-pip -q -y

# Install Docker Compose
pip install docker-compose

# Start Docker
systemctl start docker
systemctl enable docker

# Add user to Docker group 
usermod -aG docker ubuntu
