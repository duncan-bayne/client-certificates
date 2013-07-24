#!/bin/bash

set -e

sudo apt-get install -y ruby-dev libcurl4-openssl-dev

sudo gem install passenger
sudo passenger-install-nginx-module

sudo mv init-deb.sh /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx
sudo /usr/sbin/update-rc.d -f nginx defaults

sudo mkdir -p /opt/nginx/ssl
sudo cp server.key server.crt client.crt /opt/nginx/ssl
sudo cp nginx.conf /opt/nginx/conf

sudo /etc/init.d/nginx start
