# Désinstaller tous les outils de ligne de commandes
# et les kits de développement installés sur la machine.
#
# Path: ubuntu_uninstall_full.sh
#

# Lancement du script
echo "[SCRIPT DE DESINSTALLATION] Désinstallation des outils installés"
echo $separateLine

# Désinstallation de Curl & Wget
echo "==> Commande line tools - Désinstallation de Curl & Wget"
echo $separateLine
sudo apt remove curl wget
echo $separateLine

# Désinstallation de Nano
echo "==> Commande line tools - Désinstallation de Nano"
echo $separateLine
sudo apt remove nano
echo $separateLine

# Désinstallation de Zip & Unzip
echo "==> Commande line tools - Désinstallation de Zip & Unzip"
echo $separateLine
sudo apt remove zip unzip
echo $separateLine

# Désinstallation de Git
echo "==> Commande line tools - Désinstallation de Git"
echo $separateLine
sudo apt remove git
echo $separateLine

# Désinstallation de Tree
echo "==> Commande line tools - Désinstallation de Tree"
echo $separateLine
sudo apt remove tree
echo $separateLine

# Désinstallation de Python 3
echo "==> Kits de développement - Désinstallation de Python 3"
echo $separateLine
sudo apt remove python3
echo $separateLine

# Désinstallation de C/C++
echo "==> Kits de développement - Désinstallation de C/C++"
echo $separateLine
sudo apt remove gcc build-essential
echo $separateLine

# Désinstallation de C# & .Net
echo "==> Kits de développement - Désinstallation de C# & .Net"
echo $separateLine
sudo apt remove mono-devel aspnetcore-runtime-6.0 dotnet-runtime-6.0 dotnet
echo $separateLine

# Désinstallation de Java
echo "==> Kits de développement - Désinstallation de Java"
echo $separateLine
sudo apt remove default-jdk
echo $separateLine

# Désinstallation de NodeJS & NPM
echo "==> Kits de développement - Désinstallation de NodeJS & NPM"
echo $separateLine
sudo apt remove nodejs npm
echo $separateLine

# Désinstallation de PHP
echo "==> Kits de développement - Désinstallation de PHP"
echo $separateLine
sudo apt purge 'php*'
echo $separateLine

# Désinstallation de Ruby
echo "==> Kits de développement - Désinstallation de Ruby"
echo $separateLine
sudo apt remove ruby
echo $separateLine

# Fin du script
echo "[SCRIPT DE DESINSTALLATION] Désinstallation des outils installés terminée"
echo "Attention - les outils suivants n'ont pas été désinstallés, au vu de leur utilité :"
echo "--> libpcre3"
echo "--> net-tools"
echo $separateLine