phpVersion="7.4"
separateLine="- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"
echo "[Script - PHP - $phpVersion] Installation de PHP $phpVersion sur Ubuntu 22.04"
echo $separateLine
echo "[Script - PHP - $phpVersion] Mise à jour des dépôts"
echo $separateLine
sudo apt update && apt upgrade
echo $separateLine
echo "[Script - PHP - $phpVersion] Ajout du dépôt nécessaire de PHP $phpVersion"
echo $separateLine
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
echo $separateLine
echo "[Script - PHP - $phpVersion] Mise à jour des dépôts"
echo $separateLine
sudo apt update && apt upgrade
echo $separateLine
echo "[Script - PHP - $phpVersion] Installation des prérequis"
echo $separateLine
sudo apt install curl wget git tree nano zip unzip libpcre3
echo $separateLine
echo "[Script - PHP - $phpVersion] Nettoyage des précédentes versions de PHP"
echo $separateLine
sudo apt purge 'php*'
echo $separateLine
echo "[Script - PHP - $phpVersion] Installation de PHP $phpVersion"
echo $separateLine
sudo apt -y install php$phpVersion
sudo apt -y install php$phpVersion-amqp
sudo apt -y install php$phpVersion-apcu
sudo apt -y install php$phpVersion-bcmath
sudo apt -y install php$phpVersion-cli
sudo apt -y install php$phpVersion-common
sudo apt -y install php$phpVersion-curl
sudo apt -y install php$phpVersion-ctype
sudo apt -y install php$phpVersion-dom
sudo apt -y install php$phpVersion-fpm
sudo apt -y install php$phpVersion-gd
sudo apt -y install php$phpVersion-gmp
sudo apt -y install php$phpVersion-intl
sudo apt -y install php$phpVersion-json
sudo apt -y install php$phpVersion-mbstring
sudo apt -y install php$phpVersion-mysql 
sudo apt -y install php$phpVersion-opcache
sudo apt -y install php$phpVersion-pdo
sudo apt -y install php$phpVersion-pgsql
sudo apt -y install php$phpVersion-readline
sudo apt -y install php$phpVersion-redis
sudo apt -y install php$phpVersion-simplexml
sudo apt -y install php$phpVersion-soap
sudo apt -y install php$phpVersion-sqlite3
sudo apt -y install php$phpVersion-tokenizer
sudo apt -y install php$phpVersion-xdebug
sudo apt -y install php$phpVersion-xml 
sudo apt -y install php$phpVersion-zip
echo $separateLine
echo "[Script - PHP - $phpVersion] Installation de $phpVersion terminée"
echo $separateLine
php -v
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de Composer"
echo $separateLine
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
echo $separateLine
echo "[Script - PHP & Composer - $phpVersion] Installation de Composer terminée"
echo $separateLine
composer --version