phpVersion="Lastest"
separateLine="- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "[Script - PHP & Composer - $phpVersion] Installation de PHP $phpVersion sur Ubuntu 22.04"
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Mise à jour des dépôts"
echo $separateLine
sudo apt update && apt upgrade
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Mise à jour des dépôts"
echo $separateLine
sudo apt update && apt upgrade
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation des prérequis"
echo $separateLine
sudo apt install curl wget git tree nano zip unzip libpcre3
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Nettoyage des précédentes versions de PHP"
echo $separateLine
sudo apt purge 'php*'
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de PHP $phpVersion"
echo $separateLine
sudo apt -y install php
sudo apt -y install php-amqp
sudo apt -y install php-apcu
sudo apt -y install php-bcmath
sudo apt -y install php-cli
sudo apt -y install php-common
sudo apt -y install php-curl
#sudo apt -y install php-ctype
#sudo apt -y install php-dom
sudo apt -y install php-fpm
sudo apt -y install php-gd
sudo apt -y install php-gmp
sudo apt -y install php-intl
sudo apt -y install php-json
sudo apt -y install php-mbstring
sudo apt -y install php-mysql 
#sudo apt -y install php-opcache
sudo apt -y install php-pdo
sudo apt -y install php-pgsql
sudo apt -y install php-readline
sudo apt -y install php-redis
#sudo apt -y install php-simplexml
sudo apt -y install php-soap
sudo apt -y install php-sqlite3
sudo apt -y install php-tokenizer
sudo apt -y install php-xdebug
sudo apt -y install php-xml 
sudo apt -y install php-zip
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de $phpVersion terminée"
echo $separateLine
php -v
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de Composer"
echo $separateLine
sudo apt install composer
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de Composer terminée"
echo $separateLine
composer --version