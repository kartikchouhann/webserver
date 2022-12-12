#!/bin/bash
apt update -y
apt install apache2 -y
ufw allow ‘Apache’ -y
systemctl restart apache2
mkdir -p /var/www/info.net/html
chmod -R 755 /var/www/info.net
cp ./index.html /var/www/info.net/html
systemctl restart apache2
