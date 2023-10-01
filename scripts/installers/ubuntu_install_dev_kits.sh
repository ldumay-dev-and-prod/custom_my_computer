# Lancement du script
echo "[Script - Ubuntu 22.04 - Dev. kits] Installation des kits de développement"
echo $separateLine

# Si l'utilisateur a choisi d'installer tous les kits de développement
if [ $all = true ]
then
    export python=true
    export c_cpp=true
    export csharp=true
    export java=true
    export nodejs=true
    export php_latest=true
    export php_7_4=false
    export ruby=true
fi

# Si l'utilisateur a choisi d'installer Python
if [ $python = true ]
then
    echo "==> Dev. kits - Installation de Python 3"
    echo $separateLine
    sudo apt install python3
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer C/C++
if [ $c_cpp = true ]
then
    echo "==> Dev. kits - Installation de C/C++"
    echo $separateLine
    sudo apt install gcc build-essential
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer C#
if [ $csharp = true ]
then
    echo "==> Dev. kits - Installation de C# & .Net"
    echo $separateLine
    sudo apt install mono-devel aspnetcore-runtime-6.0 dotnet-runtime-6.0
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer Java
if [ $java = true ]
then
    echo "==> Dev. kits - Installation de Java"
    echo $separateLine
    sudo apt install default-jdk
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer NodeJS & NPM
if [ $nodejs = true ]
then
    echo "==> Dev. kits - Installation de NodeJS & NPM"
    echo $separateLine
    sudo apt install nodejs npm
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer PHP
if [ $php_latest = true ]
then
    echo "==> Dev. kits - Installation de PHP (latest)"
    echo $separateLine
    /bin/bash ./ubuntu_install_composer_with_php_latest.sh
    echo $separateLine
elif [ $php_7_4 = true ]
then
    echo "==> Dev. kits - Installation de PHP 7.4"
    echo $separateLine
    /bin/bash ./ubuntu_install_composer_with_php_7.4.sh
    echo $separateLine
fi

# Si l'utilisateur a choisi d'installer Ruby
if [ $ruby = true ]
then
    echo "==> Dev. kits - Installation de Ruby"
    echo $separateLine
    sudo apt install ruby
    echo $separateLine
fi