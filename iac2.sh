#!/bin/bash

echo "Atualizando o servidor ..."
apt-get update
apt-get upgrade -y

echo "Instalando o servidor Web Apache ..."
apt-get install apache2 -y

echo "Clonando projeto do site e colocando na pasta padrão do Apache ..."
git clone https://github.com/denilsonbonatti/linux-site-dio.git
cd linux-site-dio
cp -R * /var/www/html/

echo "Fim!"
