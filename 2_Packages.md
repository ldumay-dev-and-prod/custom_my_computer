<a name="top"></a>

[<== Revenir à la page principale du projet](../../)

# Packages de base pour le développement

Afin de pouvoir développer dans de bonnes conditions, il est nécessaire d'installer quelques packages.

## Sommaire

- [1 - Liste des packages](#1---liste-des-packages)
- [2 - Sur Windows](#2---sur-windows)
- [3 - Sur Mac OS](#3---sur-mac-os)
- [4 - Sur Linux](#4---sur-linux)

## 1 - Liste des packages
[Haut de page](#top)

- Sur Windows
    - [2.1 - Insllation de Composer & Php & Xdebug](#21---insllation-de-composer--php--xdebug)
        - **php** & **xdebug** & **composer**
        - [2.1.1 - Télécharger PHP 8.1 et Composer pour Windows](#211---télécharger-php-81-et-composer-pour-windows)
        - [2.1.2 - Installation de PHP 8.1](#212---installation-de-php-81)
        - [2.1.3 - Installer Composer et ajouter PHP 8.1 au Path](#213---installer-composer-et-ajouter-php-81-au-path)
        - [2.1.4 - Installer Xedbug](#214---installer-xedbug)
        - [2.1.5 - Activer OPcache](#215---activer-opcache)
    - [2.2 - Vérifier l'installation de PHP 8.1 et Composer](#216---vérifier-linstallation-de-php-81-et-composer)
        - [2.2.1 - PHP 8.1](#2161---php-81)
        - [2.2.2 - Composer](#2162---composer)
- Sur Mac OS
    - [3.1 - Xcode](#31---xcode)
    - [3.2 - Homebrew](#32---homebrew)
    - [3.3 - Packages utiles](#33---packages-utiles)
        - Déjà sur Mac OS : **curl**
        - **zip** & **unzip** & **wget** & **nano** & **tree** & **git** & **gcc**
        - **composer** & **php** & **apcu** & **xdebug**
    - [3.4 - Installer Xdebug et OPcache](#34---installer-xdebug-et-opcache)
    - [3.5 - Gestion du service Php](#35---gestion-du-service-php)
- Sur Linux
    - [4.1 - Présentation des scripts](#41---présentation-des-scripts)
        - **curl** & **wget** & **nano** & **zip** & **unzip** & **git** & **tree** & **libpcre3**
        - **python** & **c/c++** & **c#** & **java** & **nodejs** & **npm** & **php** & **composer** & **ruby**
    - [4.2 - Script d'installation des packages](#42---script-dinstallation-des-packages)
    - [4.3 - Script d'installation d'applications de développement](#43---script-dinstallation-dapplications-de-développement)
    - [4.4 - Script de vérification des packages installés](#44---script-de-vérification-des-packages-installés)
    - [4.5 - Script de désinstallation des packages](#45---script-de-désinstallation-des-packages)

## 2 - Sur Windows
[Haut de page](#top)

### 2.1 - Insllation de Composer & Php & Xdebug
[Haut de page](#top)

#### 2.1.1 - Télécharger PHP
[Haut de page](#top)

##### 2.1.1.1 - Installation de PHP en ligne de commande
[Haut de page](#top)

_**A - Installation de Chocolatey**_

Pour pouvoir installer PHP 8.1 en ligne de commande, il est nécessaire d'installer **Chocolatey**.
Pour ce faire, exécuter la commande ci-dessous dans le **PowerShell** en tant qu'**Administrateur**.

```bash
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

_**B - Installation de Php**_

Après avoir installer **Chocolatey**, il est possible d'installer **Php** en ligne de commande.
Pour ce faire, exécuter la commande ci-dessous dans le **PowerShell** en tant qu'**Administrateur**.

```bash
cd ~/Downloads/
Invoke-WebRequest -URI https://windows.php.net/downloads/releases/php-7.4.33-Win32-vc15-x64.zip -OutFile php-7.4.33-Win32-vc15-x64.zip
Expand-Archive php-7.4.33-Win32-vc15-x64.zip -DestinationPath php-7.4.33
rm -r php-7.4.33-Win32-vc15-x64.zip
mkdir php
move php-7.4.33 php/php-7.4.33/
move php C:/php
cd C:/php
ls
```

##### 2.1.1.2 - Installation de PHP avec le zip
[Haut de page](#top)

Télécharger PHP : [Zip VS16 x64 Thread Safe](https://windows.php.net/download/).

Décompresser et copier les contenu de fichier **zip** dans un nouvau dossier : `C:\php\<version>\`.

#### 2.1.2 - Installer Composer et ajouter PHP au Path
[Haut de page](#top)

Télécharger Composer : [Composer-Setup.exe](https://getcomposer.org/download/)

Executer le fichier **Composer-Setup.exe**

![img](images/php_composer_xdebug/001.png)

Choisissez votre choix d'installation et cocher le mode **developper**.

![img](images/php_composer_xdebug/002.png)

Sélectionner le dossier d'installation de PHP.

![img](images/php_composer_xdebug/003.png)

> **Note :**
> - Normalement, l'installeur de composer détecte de lui-même l'installation de php. Si ce n'est pas le cas, choisissez le dossier en question ou réinstaller PHP.
> - De plus, si cela n'est pas le cas, Composer vous propose d'ajouter PHP à votre Path (une des variables de votre environement de développement).

Cela vous permettra d'accéder à Php via une console.

![img](images/php_composer_xdebug/004.png)

Dans le cas où vous souhaiteriez ajouté un proxy, cela est possible.

![img](images/php_composer_xdebug/005.png)

Lance maintenant l'installation.

![img](images/php_composer_xdebug/006.1.png)

Petit message ...

![img](images/php_composer_xdebug/006.2.png)

Voilà, c'est finis. 💪

![img](images/php_composer_xdebug/006.3.png)

#### 2.1.3 - Installer Xedbug
[Haut de page](#top)

Dans le git, je propose une dossier composé d'un fichier php chargé de la fonction `phpinfo()` dont à besion pour vérifié la version et l'installation de notre PHP.

Render-vous dans le dossier :

```bash
> cd phpinfo
```

Lancer une petit serveur HTTP avec php pour pouvoir lire la configuration lu par `phpinfo()`.

```bash
> php -S localhost:8080
[Tue Sep 27 23:43:49 2022] PHP 7.4.26 Development Server (http://localhost:8080) started
[Tue Sep 27 23:43:53 2022] [::1]:2602 Accepted
[Tue Sep 27 23:43:53 2022] [::1]:2603 Accepted
[Tue Sep 27 23:43:53 2022] [::1]:2602 [200]: GET /
[Tue Sep 27 23:43:53 2022] [::1]:2602 Closing
[Tue Sep 27 23:43:55 2022] [::1]:2603 [404]: GET /sw.js - No such file or directory
[Tue Sep 27 23:43:55 2022] [::1]:2603 Closing
```

Une fois le serveur HTTP lancer, aller sur [http://localhost:8080](http://localhost:8080)

Voici une apperçu :

![img](images/php_composer_xdebug/007.png)

- Sélectionné toute la page avec : `CTRL` + `A`

![img](images/php_composer_xdebug/008.png)

- Copier toute la page avec : `CTRL` + `C`

- Aller sur [https://xdebug.org/wizard](https://xdebug.org/wizard)

![img](images/php_composer_xdebug/009.png)

- Coller toute la page avec : `CTRL` + `V`

![img](images/php_composer_xdebug/010.png)

- Suiver ensuite les instructions afficher.

Dans l'exemple :

- **Instructions** :
  - 1 Download **php_xdebug-3.1.5-7.4-vc15-x86_64.dll**
  - 2 Move the downloaded file to `c:\wamp64\bin\php\php7.4.26\ext`, and rename it to `php_xdebug.dll`
  - 3 Mettez à jour `C:\wamp64\bin\php\php7.4.26\php.ini` et ajouté la ligne : `zend_extension = xdebug`
  - 4 Redémarrer le serveur HTTP intégré de PHP : `php -S localhost:8080`

![img](images/php_composer_xdebug/011.png)

- Fichier téléchargé.

![img](images/php_composer_xdebug/012.png)

- Fichier renommé et déplacé.

![img](images/php_composer_xdebug/013.png)

- Ligne ajouté.

- Accès : [http://localhost:8080](http://localhost:8080)

![img](images/php_composer_xdebug/014.png)

![img](images/php_composer_xdebug/015.png)

Voilà, Xdebug est installé. 😎💪

#### 2.1.4 - Activer OPcache
[Haut de page](#top)

Rechercher `zend_extension` et si il y a un `;` devant `zend_extension=xdebug`, retirer le.

Vous dévrier obtenir cela :

![img](images/php_composer_xdebug/016.png)

Activer en retirant les `;` aux début des lignes :

```bash
opcache.memory_consumption=128
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=4000
opcache.revalidate_freq=60
opcache.fast_shutdown=1
opcache.enable_cli=1
```

![img](images/php_composer_xdebug/017.png)

Voilàa, OPcache est activer 😉.

### 2.2 - Vérifier l'installation de PHP 8.1 et Composer
[Haut de page](#top)

Ouvrer une console et effectuer les commandes suivantes :

- pour vérifier Php : `php -v`
- pour vérifier Cmposer : `composer -v`

#### 2.2.1 - PHP 8.1
[Haut de page](#top)

Si Php est bien installé, voici que votre console afficher :

```bash
> php -v
```

Si PHP est installé sans Xdebug et OPcache

```bash
PHP 8.1.10 (cli) (built: Aug 30 2022 18:05:49) (ZTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.1.10, Copyright (c) Zend Technologies
```

Si PHP est installé avec Xdebug et sans OPcache

```bash
PHP 7.4.26 (cli) (built: Nov 16 2021 18:15:31) ( ZTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Xdebug v3.1.5, Copyright (c) 2002-2022, by Derick Rethans
```

Si PHP est installé avec Xdebug et OPcache

```bash
PHP 8.1.10 (cli) (built: Aug 30 2022 18:05:49) (ZTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.1.10, Copyright (c) Zend Technologies
    with Xdebug v3.1.5, Copyright (c) 2002-2022, by Derick Rethans
    with Zend OPcache v8.1.10, Copyright (c), by Zend Technologies
```

#### 2.2.2 - Composer

Vérifier si composer est bien installé :

```bash
> composer -v
   ______
  / ____/___  ____ ___  ____  ____  ________  _____
 / /   / __ \/ __ `__ \/ __ \/ __ \/ ___/ _ \/ ___/
/ /___/ /_/ / / / / / / /_/ / /_/ (__  )  __/ /
\____/\____/_/ /_/ /_/ .___/\____/____/\___/_/
                    /_/
Composer version 2.4.2 2022-09-14 16:11:15

Usage:
  command [options] [arguments]

Options:
  -h, --help                     Display help for the given command. When no command is given display help for the list command
  -q, --quiet                    Do not output any message
  -V, --version                  Display this application version
      --ansi|--no-ansi           Force (or disable --no-ansi) ANSI output
  -n, --no-interaction           Do not ask any interactive question
      --profile                  Display timing and memory usage information
      --no-plugins               Whether to disable plugins.
      --no-scripts               Skips the execution of all scripts defined in composer.json file.
  -d, --working-dir=WORKING-DIR  If specified, use the given directory as working directory.
      --no-cache                 Prevent use of the cache
  -v|vv|vvv, --verbose           Increase the verbosity of messages: 1 for normal output, 2 for more verbose output and 3 for debug

Available commands:
  about                Shows a short information about Composer
  archive              Creates an archive of this composer package
  audit                Checks for security vulnerability advisories for installed packages
  browse               [home] Opens the package's repository URL or homepage in your browser
  bump                 Increases the lower limit of your composer.json requirements to the currently installed versions
  check-platform-reqs  Check that platform requirements are satisfied
  clear-cache          [clearcache|cc] Clears composer's internal package cache
  completion           Dump the shell completion script
  config               Sets config options
  create-project       Creates new project from a package into given directory
  depends              [why] Shows which packages cause the given package to be installed
  diagnose             Diagnoses the system to identify common errors
  dump-autoload        [dumpautoload] Dumps the autoloader
  exec                 Executes a vendored binary/script
  fund                 Discover how to help fund the maintenance of your dependencies
  global               Allows running commands in the global composer dir ($COMPOSER_HOME)
  help                 Display help for a command
  init                 Creates a basic composer.json file in current directory
  install              [i] Installs the project dependencies from the composer.lock file if present, or falls back on the composer.json
  licenses             Shows information about licenses of dependencies
  list                 List commands
  outdated             Shows a list of installed packages that have updates available, including their latest version
  prohibits            [why-not] Shows which packages prevent the given package from being installed
  reinstall            Uninstalls and reinstalls the given package names
  remove               Removes a package from the require or require-dev
  require              [r] Adds required packages to your composer.json and installs them
  run-script           [run] Runs the scripts defined in composer.json
  search               Searches for packages
  self-update          [selfupdate] Updates composer.phar to the latest version
  show                 [info] Shows information about packages
  status               Shows a list of locally modified packages
  suggests             Shows package suggestions
  update               [u|upgrade] Updates your dependencies to the latest version according to composer.json, and updates the composer.lock file        
  validate             Validates a composer.json and composer.lock
```

## 3 - Sur Mac OS
[Haut de page](#top)

Voici une liste de packages utiles pour le développement sur **Mac OS** :

- [3.1 - Xcode](#21---xcode)
- [3.2 - Homebrew](#22---homebrew)
- [3.3 - Packages utiles](#23---packages-utiles)

### 3.1 - Xcode
[Haut de page](#top)

Sur Mac OS, il est nécessaire d'installer **Xcode** pour pouvoir installer **Homebrew** ou la plupart des packages.

Télécharger **Xcode** sur l'App Store, puis lancez-le et suivez les instructions.

Ensuite, il est nécessaire d'installer les outils en ligne de commande :

```bash
xcode-select --install
```

### 3.2 - Homebrew
[Haut de page](#top)

_**A - Qu'est-ce que ?**_

**Homebrew** est un gestionnaire de paquets pour macOS, tous est détaillé [ici](https://brew.sh/index_fr).

_**B - Installation**_

Pour installer homebrew, il suffit d'executer la comande ci-dessous :

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

_**C - Installer un paquet**_

Voici la commande :

```bash
brew install <paquet>
```

Un nombre important de paquets est disponible, il suffit de taper `brew search` pour avoir la liste ou de consulter La liste des paquets disponible [ici](https://formulae.brew.sh/formula/).

### 3.2 - Packages utiles
[Haut de page](#top)

Voici une suite commande pour installer plusieurs paquets utiles pour le développement :

```bash
brew install zip unzip wget nano tree git gcc
brew install composer php@7.2 php@7.3 php@8.0 php@8.3
pecl install apcu xdebug zip
```

- Via **brew** - Un gestionnaire de paquets pour macOS
    - `zip` - est un outil de compression de données
    - `wget` - est un récupérateur de fichiers Internet
    - `nano` - est un éditeur de texte gratuit exécutable dans le terminal
    - `tree` - permet d'afficher les répertoires sous forme d'arborescences (avec sortie couleur/HTML en option)
    - `git` - est un logiciel de gestion de versions décentralisé
    - `gcc` - est un compilateur C et C++
    - `php` - est un langage de programmation libre, principalement utilisé pour produire des pages Web dynamiques via un serveur HTTP
        - Pour les versions de PHP à installer, il est nécessaire de de vérifier la disponibilité des paquets sur le liste des paquets Php disponible [ici](https://formulae.brew.sh/formula/php). Les versions disponibles à ce jour sont : `7.2`, `7.3`, `8.0`, `8.3`
- Via **pecl** - Un gestionnaire de paquets pour PHP
    - `apcu` - est un système de cache de données en mémoire pour PHP
    - `xdebug` - est un débogueur pour PHP

### 3.3 - Installer Xdebug et OPcache
[Haut de page](#top)

> Si besoin, la doc. **Xdebug** se trouve ici : [https://xdebug.org/docs/install#pecl](https://xdebug.org/docs/install).

Afin de pouvoir installer **Xdebug** sur macOS, il est nécessaire d'avoir **Homebrew** et **PECL** d'installer.

> **NB : PECL** est nativement installé sur macOS, tel que **PHP**.

Vérifions cela :

##### ==> **Hombrew** avec la commande `brew`.

```bash
~ % brew

Example usage:
  brew search TEXT|/REGEX/
  brew info [FORMULA|CASK...]
  brew install FORMULA|CASK...
  brew update
  brew upgrade [FORMULA|CASK...]
  brew uninstall FORMULA|CASK...
  brew list [FORMULA|CASK...]

Troubleshooting:
  brew config
  brew doctor
  brew install --verbose --debug FORMULA|CASK

Contributing:
  brew create URL [--no-fetch]
  brew edit [FORMULA|CASK...]

Further help:
  brew commands
  brew help [COMMAND]
  man brew
  https://docs.brew.sh
```

##### ==> **PECL** avec la commande `pecl `

```bash
~ % pecl

Commands:
build                  Build an Extension From C Source
bundle                 Unpacks a Pecl Package
channel-add            Add a Channel
channel-alias          Specify an alias to a channel name
channel-delete         Remove a Channel From the List
channel-discover       Initialize a Channel from its server
channel-info           Retrieve Information on a Channel
channel-login          Connects and authenticates to remote channel server
channel-logout         Logs out from the remote channel server
channel-update         Update an Existing Channel
clear-cache            Clear Web Services Cache
config-create          Create a Default configuration file
config-get             Show One Setting
config-help            Show Information About Setting
config-set             Change Setting
config-show            Show All Settings
convert                Convert a package.xml 1.0 to package.xml 2.0 format
cvsdiff                Run a "cvs diff" for all files in a package
cvstag                 Set CVS Release Tag
download               Download Package
download-all           Downloads each available package from the default channel
info                   Display information about a package
install                Install Package
list                   List Installed Packages In The Default Channel
list-all               List All Packages
list-channels          List Available Channels
list-files             List Files In Installed Package
list-upgrades          List Available Upgrades
login                  Connects and authenticates to remote server [Deprecated in favor of channel-login]
logout                 Logs out from the remote server [Deprecated in favor of channel-logout]
makerpm                Builds an RPM spec file from a PEAR package
package                Build Package
package-dependencies   Show package dependencies
package-validate       Validate Package Consistency
pickle                 Build PECL Package
remote-info            Information About Remote Packages
remote-list            List Remote Packages
run-scripts            Run Post-Install Scripts bundled with a package
run-tests              Run Regression Tests
search                 Search remote package database
shell-test             Shell Script Test
sign                   Sign a package distribution file
svntag                 Set SVN Release Tag
uninstall              Un-install Package
update-channels        Update the Channel List
upgrade                Upgrade Package
upgrade-all            Upgrade All Packages [Deprecated in favor of calling upgrade with no parameters]
Usage: pecl [options] command [command-options] <parameters>
Type "pecl help options" to list all options.
Type "pecl help shortcuts" to list all command shortcuts.
Type "pecl help version" or "pecl version" to list version information.
Type "pecl help <command>" to get the help for the specified command.
```

Une fois **PECL** et **HomeBrew** installés, il faut est maintenant possible d'installer **Xdebug** grâce à **PECL**

```bash
pecl install xdebug

ou

pecl install xdebug-<version>
```

> Pour **PHP** 7.1.33, la version 2.9.8 de **Xdebug** est bien compatible.
> Nécessaire pour **Valet** non compatible avec **PHP** 7.2 ou +.

L'installation devrais se terminée avec le message ci-dessous :

```bash
Build process completed successfully
Installing '/usr/local/Cellar/php/8.1.5/pecl/20210902/xdebug.so'
install ok: channel://pecl.php.net/xdebug-3.1.4
Extension xdebug enabled in php.ini
```

### 3.4 - Activer OPcache

Pour activer **OPcache**, il faut modifier le fichier de configuration de **PHP**.

Pour cela, il faut trouver le fichier de configuration de **PHP**.

```bash
php -i | grep php.ini
```

> **NB :** Si vous avez plusieurs versions de **PHP** d'installer, il est nécessaire de trouver le fichier de configuration de la version de **PHP** que vous voulez modifier.

Le fichier `php.ini` se trouve dans le dossier `/usr/local/etc/php/<votre_version>/`.

Voici un exemple de résultat :

```bash
Configuration File (php.ini) Path => /usr/local/etc/php/8.1
Loaded Configuration File => /usr/local/etc/php/8.1/php.ini
```

Une fois le fichier de configuration trouver, il faut l'ouvrir avec un éditeur de texte.

```bash
nano /usr/local/etc/php/8.1/php.ini
```

> **NB :** Si vous avez plusieurs versions de **PHP** d'installer, il est nécessaire de trouver le fichier de configuration de la version de **PHP** que vous voulez modifier.

Une fois le fichier ouvert, il faut rechercher `zend_extension` et si il y a un `;` devant `zend_extension=xdebug`, retirer le.

Vous dévrier obtenir cela :

```bash
opcache.memory_consumption=128
opcache.interned_strings_buffer=8
opcache.max_accelerated_files=4000
opcache.revalidate_freq=60
opcache.fast_shutdown=1
opcache.enable_cli=1
```

### 3.5 - Gestion du service Php

1. Démarrer le service Php :

```bash
apachectl start
```
2. Stopper le service Php :

```bash
apachectl stop
```

3. Redémarrer le service Php :

```bash
apachectl restart
```

## 4 - Sur Linux
[Haut de page](#top)

Pour Linux, j'ai ancienement préparer plusieurs petits scripts d'installation de packages pour **Ubuntu**. Testé pour la version **22.04**, mais il est nécessaire de les testés pour les autres versions.

### 4.1 - Présentation des scripts

Le script principal a pour but d'installer tous les outils nécessaires au développement sur Ubuntu 22.04 selon les besoins de l'utilisateur.
<br/>Il installe les paquets et kits de développement suivants :
- les outils de ligne de commandes
  - de curl & wget (permet de gérer les téléchargements)
  - de nano (permet de gérer les fichiers)
  - de zip & unzip (permet de gérer les archives)
  - de git (permet de gérer les dépôts git)
  - de tree (permet de visualiser les dossiers sous forme d'arbre)
  - de libpcre3 (permet de gérer les expressions régulières)
  - de net-tools (permet de gérer les outils réseaux)
- les kits de développement
  - de Python ***(latest)***
  - de C / C++ ***(latest)***
  - de C# ***(latest)***
  - de Java ***(latest LTS)***
  - de NodeJS & NPM
  - de PHP
    - **7.4** ou **latest**
    - avec **Xdebug** && **OPCache**
    - avec **Composer**
  - de Ruby
- les applications de développement
  - de Valet (peu être obsolète - à vérifier)
  - de Jenkins
  - de GitLab CE

Pour les utilisers, cloner le git sur votre machine et effectuer suiver les instructions ci-dessous.

> **NB :**
> - Les scripts sont disponibles dans le dossier `/scripts/installer/`.
> - Les scripts sont à lancer en tant qu'utilisateur `root`.

### 4.2 - Script d'installation des packages

Voici le script à lancer :

> Si ne c'est pas le cas, aller avant dans le dossier `/scripts/installer/` et lancer la commande ci-dessous :

```bash
sudo sh ubuntu_install_full.sh                  
```

### 4.3 - Script d'installation d'applications de développement

Voici le script à lancer :

> Si ne c'est pas le cas, aller avant dans le dossier `/scripts/installer/` et lancer la commande ci-dessous :

```bash
sudo sh ubuntu_install_dev_apps.sh
```

#### 4.4.1 - Vérifier de l'installation des applications de développement

Après l'installation des applications de développement, il est nécessaire de les configurer ou de les tester.

_**Pour Valet**_

> **NB :**
> Si vous obtenez la commande valet introuvable, le chemin du compositeur n'est pas actuellement ajouté. Pour ce faire, nous devons d'abord vérifier le chemin du compositeur existant par la commande suivante
> Maintenant, ajoutez le chemin (si votre chemin est /root/.composer/ alors il le serait)

```bash
echo "export PATH=$PATH :/root/.composer/bin" >> ~/.bashrc
```

_**Pour Jenkins**_

Une fois installé, il est nécessaire de démarrer le service Jenkins.

```bash
sudo systemctl <action> jenkins.service
```

> **NB :** `<action>` peut être remplacé par `enable`, `start`, `stop`, `restart`, `status`.

Voir la page de gestion de Jenkins puis suivre les étapes.

> http://localhost:8080

Pour récupérer le mot de passe d'administration, il faut lancer la commande ci-dessous :

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

L'installation devrais se terminer tranquillement.

> **Si besoin** : [Voici un petit guide](https://websiteforstudents.com/how-to-install-jenkins-automation-server-on-ubuntu-16-04-18-04-18-10/)

_**Pour GitLab CE**_

La configuration de gitlab se trouve dans le fichier ci-dessous :

```bash
cd /etc/gitlab
vim gitlab.rb
```

> **Si besoin** : [Voici un petit guide](https://www.howtoforge.com/tutorial/how-to-install-and-configure-gitlab-on-ubuntu-16-04/)

### 4.4 - Script de vérification des packages installés

Le script ci-dessous désinstallera tous les outils installés dans la liste décrite en haut de la description.

> Si ne c'est pas le cas, aller avant dans le dossier `/scripts/installer/` et lancer la commande ci-dessous :

```bash
sudo sh ubuntu_check_version.sh
```

### 4.5 - Script de désinstallation des packages

Le script ci-dessous désinstallera tous les outils installés dans la liste décrite en haut de la description.

> Si ne c'est pas le cas, aller avant dans le dossier `/scripts/installer/` et lancer la commande ci-dessous :

```bash
sudo sh ubuntu_uninstall_full.sh
```