#!/bin/bash

echo "Atualizando o servidor…"
apt-get update && apt-get upgrade -y

echo "A instalar o servidor web (Apache)."
apt-get install apache2 -y

echo "A instalar o descompactador de arquivos (Unzip)."
apt-get install unzip -y

echo "A baixar a aplicacao web (via GitHub)."
cd /tmp
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip" .

echo "A descompactar a aplicação…"
unzip main.zip

echo "A enviar a aplicação para o servidor web."
cp -r linux-site-dio-main/* /var/www/html/

echo "Feito!"
