#!/bin/bash
#INSTALACIÓN DE SERVICIOS
sudo apt install isc-dhcp-server bind9

#INSTALACIÓN WEBMIN
wget https://github.com/webmin/webmin/releases/download/2.013/webmin_2.013_all.deb
sudo dpkg -i webmin*
sudo apt install -f
sudo rm -r webmin*

#HABILITAR SERVICIOS
sudo ufw allow webmin
sudo ufw allow bind9

#CONFIGURACIÓN
sudo cp -r dhcpd.conf /etc/dhcp
sudo cp -r isc-dhcp-server /etc/default
