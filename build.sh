#!/bin/bash
  
sudo dnf -y install dnf-plugins-core  
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo  
  
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable docker 
sudo systemctl start docker

sudo firewall-cmd --permanent --add-port=3434/tcp 
sudo firewall-cmd --reload
