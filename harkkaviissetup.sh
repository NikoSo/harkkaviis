#!/bin/bash

#setup script
setxkbmap fi
sudo apt-get update
sudo apt-get install -y puppet
sudo mkdir /etc/puppet/modules/iamyourmaster
cd /etc/puppet/modules/iamyourmaster
sudo mkdir manifests templates
cd /tmp/harkkaviis
#cd /home/xubuntu/Code/harkkaviis
sudo cp iamyourmaster /etc/puppet/modules/iamyourmaster/manifests/init.pp
sudo puppet apply -e 'class { iamyourmaster: }'
