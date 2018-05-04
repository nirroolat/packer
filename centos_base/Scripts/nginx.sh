#!/bin/bash -e
echo "***** Starting NGINX Configs"
sudo sed -i 's/~~REPLACEME~~/'$AUTH_HEADER'/' /tmp/nginx.conf
sudo cp /tmp/nginx.conf /etc/nginx
sudo service nginx reload
