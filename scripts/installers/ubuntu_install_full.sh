#!/bin/sh

# Pack complet d'outils de ligne de commandes 
# et de kits de développement pour Ubuntu 22.04.
#
# Path: ubuntu_install_full.sh

# Ajout des variables nécessaires au script au terminal
# pour pouvoir les utiliser dans les commandes
export separateLine="- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

# Lancement du script
echo "[SCRIPT D'INSTALLATION] Installation de tous les outils nécessaires au développement"
echo $separateLine
echo "====> Les outils installable via ce script sont les suivants :"
echo "--> Les outils de ligne de commandes : curl / wget / nano /zip / unzip / git / tree / libpcre3 / net-tools"
echo "--> Les kits de dév. : Python 3 / C / C++ / C# & .Net / Java / NodeJS & NPM / PHP (latest-8 ou 7.4) / Ruby"
echo "--> Les applications de développement : Valet / Jenkins / GitLab CE"
echo "NB : Valet peut être obsolète, à vérifier."
echo $separateLine
echo ""
echo "- Installer tous les outils ? (y/n)"
read choice
if [ $choice = "y" ]
then
    export all=true
    # Vérification des choix de l'utilisateur
    /bin/bash ./ubuntu_install_packages.sh
    /bin/bash ./ubuntu_install_dev_kits.sh
else
    echo "- Installer curl & wget ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export curl_wget=true
    fi
    
    echo "- Installer nano ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export nano=true
    fi

    echo "- Installer zip & unzip ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export zip_unzip=true
    fi

    echo "- Installer git ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export git=true
    fi
    
    echo "- Installer tree ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export tree=true
    fi
        
    echo "- Installer libpcre3 ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export libpcre3=true
    fi

    echo "- Installer net-tools ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export net_tools=true
    fi
    
    echo "- Installer Python 3 ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export python=true
    fi
        
    echo "- Installer C / C++ ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export c_cpp=true
    fi
       
    echo "- Installer C# & .Net ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export csharp=true
    fi
    
    echo "- Installer Java ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export java=true
    fi
    
    echo "- Installer NodeJS & NPM ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export nodejs=true
    fi
    
    echo "- Installer PHP (latest) ou PHP 7.4 ou aucun ? (1/2/3)"
    read choice
    if [ $choice = "1" ]
        then export php_latest=true
    fi
    if [ $choice = "2" ]
        then export php_7_4=true
    fi

    echo "- Installer Ruby ? (y/n)"
    read choice
    if [ $choice = "y" ]
        then export ruby=true
    fi

    echo $separateLine
    # Vérification des choix de l'utilisateur
    /bin/bash ./ubuntu_install_packages.sh
    /bin/bash ./ubuntu_install_dev_kits.sh
fi
# Fin du script
echo "[SCRIPT D'INSTALLATION] Installation des outils terminée"
echo $separateLine