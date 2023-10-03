# Vérification des outils de ligne de commandes
# et de kits de développement installés sur la machine.
#
# Path: ubuntu_check_version.sh
#

# Lancement du script
echo "[Script - Ubuntu 22.04] Vérification des outils installés"
echo $separateLine

# Vériication de Curl & Wget
echo "==> Commande line tools - Vérification de Curl & Wget"
echo $separateLine
curl --version
wget --version
echo $separateLine

# Vériication de Nano
echo "==> Commande line tools - Vérification de Nano"
echo $separateLine
nano --version
echo $separateLine

# Vériication de Zip & Unzip
echo "==> Commande line tools - Vérification de Zip & Unzip"
echo $separateLine
zip --version
unzip --version
echo $separateLine

# Vériication de Git
echo "==> Commande line tools - Vérification de Git"
echo $separateLine
git --version
echo $separateLine

# Vériication de Tree
echo "==> Commande line tools - Vérification de Tree"
echo $separateLine
tree --version
echo $separateLine

# Vériication de Python 3
echo "==> Kits de développement - Vérification de Python 3"
echo $separateLine
python3 --version
echo $separateLine

# Vériication de C/C++
echo "==> Kits de développement - Vérification de C/C++"
echo $separateLine
gcc --version
echo $separateLine

# Vériication de C# & .Net
echo "==> Kits de développement - Vérification de C# & .Net"
echo $separateLine
dotnet --version
echo $separateLine

# Vériication de Java
echo "==> Kits de développement - Vérification de Java"
echo $separateLine
java --version
echo $separateLine

# Vériication de Node.js
echo "==> Kits de développement - Vérification de Node.js"
echo $separateLine
npm --version
node --version
echo $separateLine

# Vériication de PHP
echo "==> Kits de développement - Vérification de PHP"
echo $separateLine
php --version

# Vériication de Ruby
echo "==> Kits de développement - Vérification de Ruby"
echo $separateLine
ruby --version
echo $separateLine