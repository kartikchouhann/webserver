#!/bin/bash
yum update -y
yum install httpd -y
systemctl restart httpd
cp ./index.html /var/www/html
systemctl restart httpd
