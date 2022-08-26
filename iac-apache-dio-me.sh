# /bin/bash

echo "Atualizando o servidor..."
apt update
apt upgrade -y

echo "Instalando unzip..."
apt install unzip -y

echo "Instalando apache..."
apt install apache2 -y

echo "Copiando arquivos do site..."
cd /tmp
wget https://githun.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp -R linux-site-dio-main/* /var/www/html/

echo "Finalizado."

