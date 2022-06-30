#!/bin/sh

apt-get -y update

# Install wireguard
apt install -y wireguard

# install netclient
curl -sL 'https://apt.netmaker.org/gpg.key' | sudo tee /etc/apt/trusted.gpg.d/netclient.asc
curl -sL 'https://apt.netmaker.org/debian.deb.txt' | sudo tee /etc/apt/sources.list.d/netclient.list
sudo apt update -y
sudo apt install -y netclient

systemctl enable netclient

# Join the node to the mesh network
netclient join -t eyJhcGljb25uc3RyaW5nIjoiYXBpLm5tLjU0LTIzNy0zOC0xMzUubmlwLmlvOjQ0MyIsIm5ldHdvcmsiOiJrM3MiLCJrZXkiOiJmZDk2ZTUwMGVmMzA5NDhjIiwibG9jYWxyYW5nZSI6IiJ9


