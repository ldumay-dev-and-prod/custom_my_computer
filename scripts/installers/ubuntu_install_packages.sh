# Lancement du script
echo "[Script - Ubuntu 22.04 - Commande line tools] Installation d'outils de ligne de commandes"
echo $separateLine
# Si l'utilisateur a choisi d'installer tous les outils de ligne de commandes
if [ $all = true ]
then
    export curl_wget=true
    export nano=true
    export zip_unzip=true
    export git=true
    export tree=true
    export libpcre3=true
else
    if [ $curl_wget = true ] then export curl_wget=true
    if [ $nano = true ] then export nano=true
    if [ $zip_unzip = true ] then export zip_unzip=true
    if [ $git = true ] then export git=true
    if [ $tree = true ] then export tree=true
    if [ $libpcre3 = true ] then export libpcre3=true
fi
# Si l'uitlisateur a choisi d'installer Curl & Wget
if [ $curl_wget = true ]
then
    echo "==> Commande line tools - Installation de Curl & Wget"
    echo $separateLine
    sudo apt install curl wget
    echo $separateLine
fi
# Si l'uitlisateur a choisi d'installer Nano
if [ $nano = true ]
then
    echo "==> Commande line tools - Installation de Nano"
    echo $separateLine
    sudo apt install nano
    echo $separateLine
fi
# Si l'uitlisateur a choisi d'installer Zip & Unzip
if [ $zip_unzip = true ]
then
    echo "==> Commande line tools - Installation de Zip & Unzip"
    echo $separateLine
    sudo apt install zip unzip
    echo $separateLine
fi
# Si l'uitlisateur a choisi d'installer Git
if [ $git = true ]
then
    echo "==> Commande line tools - Installation de Git"
    echo $separateLine
    sudo apt install git
    echo $separateLine
fi
# Si l'uitlisateur a choisi d'installer Tree
if [ $tree = true ]
then
    echo "==> Commande line tools - Installation de Tree"
    echo $separateLine
    sudo apt install tree
    echo $separateLine
fi
# Si l'uitlisateur a choisi d'installer libpcre3
if [ $libpcre3 = true ]
then
    echo "==> Commande line tools - Installation de libpcre3"
    echo $separateLine
    sudo apt install libpcre3
    echo $separateLine
fi