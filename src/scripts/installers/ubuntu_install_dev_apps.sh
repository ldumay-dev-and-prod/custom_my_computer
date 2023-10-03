# Lancement du script
echo "[SCRIPT D'INSTALLATION] Installation d'applications de développement"
echo $separateLine

# Si l'utilisateur a choisi d'installer toutes les applications de développement
if [ $all = true ]
then
    export valet=true
    export jenkins=true
    export gitlab_ce=true
else
    if [ $valet = true ] then export valet=true
    if [ $jenkins = true ] then export jenkins=true
    if [ $gitlab_ce = true ] then export gitlab_ce=true
fi

# Si l'utilisateur a choisi d'installer Valet
if [ $valet = true ]
then
    echo "==> Applications de développement - Installation de Valet"
    echo $separateLine
    apt install network-manager libnss3-tools jq xsel
    apt install php*-cli php*-common php*-curl php*-json php*-mbstring php*-mcrypt php*-mysql php*-opcache php*-readline php*-xml php*-zip
    apt install php*-sqlite3 php*-mysql php*-pgsql
    apt install php7.0-fpm
    apt install php7.0-curl
    composer global require cpriego/valet-linux
    valet install
    echo $separateLine
fi
# Si l'utilisateur a choisi d'installer Jenkins
if [ $jenkins = true ]
then
    echo "==> Applications de développement - Installation de Jenkins"
    echo $separateLine

    # Affichage de la version de Java installée
    java -version

    # Demande de confirmation de l'installation de Java 11
    echo "- Installer Java 11 ? (y/n)"
    read choice
    if [ $choice = "n" ]
    then
        echo "==> Applications de développement - Installation de Java 11"
        echo $separateLine
        sudo apt install openjdk-11-jdk
        echo "==> Applications de développement - Installation de Jenkins"
    fi

    # Installation de Jenkins
    wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
    sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    sudo apt update
    sudo apt install jenkins
    sudo systemctl status jenkins.service

    echo $separateLine
fi
# Si l'utilisateur a choisi d'installer GitLab CE
if [ $gitlab_ce = true ]
then
    echo "==> Applications de développement - Installation de GitLab CE"
    echo $separateLine
    sudo apt install curl openssh-server ca-certificates postfix
    curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash

    # Choix de l'URL de GitLab
    echo "L'URL de GitLab CE par défaut est : http://gitlab.example.com"
    echo "- Désirez-vous utiliser une URL personnalisée ? (y/n)"
    read choice
    if [ $choice = "n" ]
        sudo EXTERNAL_URL="http://gitlab.example.com" apt install gitlab-ce
    else
        echo "- Veuillez entrer l'URL de GitLab CE :"
        read url
        sudo EXTERNAL_URL="$url" apt install gitlab-ce
    fi
    echo $separateLine
fi