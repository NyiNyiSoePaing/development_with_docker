#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install prerequisite packages
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    wget \
    curl \
    zip \
    unzip \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker APT repository
sudo add-apt-repository -y \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

# Update the package list again
sudo apt-get update -y

# Install the latest version of Docker CE (Community Edition)
sudo apt-get install -y docker-ce python3-certbot-nginx

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the Docker Compose binary
sudo chmod +x /usr/local/bin/docker-compose


# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip ./aws

# Start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Install Nginx
sudo apt-get install -y nginx zsh  curl

# Start Nginx service
sudo systemctl enable nginx
sudo systemctl start nginx

# Add the ubuntu user to the docker group
sudo usermod -aG docker ubuntu