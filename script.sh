#!/bin/bash
#INSTALACIÓN DE SERVICIOS
sudo apt install isc-dhcp-server bind9

#INSTALACIÓN WEBMIN
wget https://github.com/webmin/webmin/releases/download/2.013/webmin_2.013_all.deb
sudo dpkg -i webmin*
sudo apt install -f

#HABILITAR SERVICIOS
sudo ufw allow webmin
sudo ufw allow isc-dhcp-server
sudo ufw allow bind9
