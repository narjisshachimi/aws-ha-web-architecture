#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl start httpd
systemctl enable httpd

echo "<h1>Web App running on $(hostname)</h1>" > /var/www/html/index.html

