#!/bin/bash

### Proxy configuration, if required
# export http_proxy=http://proxy.example.com/
# export https_proxy=http://proxy.example.com:443/
# export HTTP_PROXY=http://proxy.example.com/
# export HTTPS_PROXY=http://proxy.example.com:443/
#
# sudo bash -c "cat << EOF > /etc/apt/apt.conf
# Acquire::http::Proxy \"$HTTP_PROXY\";
# Acquire::https::Proxy \"$HTTPS_PROXY\";
# EOF"

sudo apt-get update
sudo apt-get -y dist-upgrade
sudo apt-get -y install software-properties-common
sudo -E apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible python-pip 
sudo pip install pywinrm