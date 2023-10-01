<a name="top"></a>

[<== Revenir à la page principale du projet](../../)

# Packages de base pour le développement

Afin de pouvoir développer dans de bonnes conditions, il est nécessaire d'installer quelques packages.

## Sommaire

- [1 - Liste des packages](#1---liste-des-packages)
- [1 - Sur Windows](#1---sur-windows)
- [2 - Sur Mac OS](#2---sur-mac-os)
- [3 - Sur Linux](#3---sur-linux)

## 1 - Liste des packages
[Haut de page](#top)

- Sur Windows
    - [1.1 - php & xdebug](#11---php--xdebug)
        - **php** & **xdebug**
- Sur Mac OS
    - [2.1 - Xcode](#21---xcode)
    - [2.2 - Homebrew](#22---homebrew)
    - [2.3 - Packages utiles](#23---packages-utiles)
        - **zip** & **wget** & **nano** & **tree** & **git** & **gcc**
        - **php** & **apcu** & **xdebug**

## 1 - Sur Windows
[Haut de page](#top)

_**A venir...**_

### 1.1 - php & xdebug

#### 1.1.1 - Configuration du Php.ini

Le fichier `php.ini` se trouve dans le dossier `/usr/local/etc/php/<votre_version>`.

#### 1.1.2 - Configuration du Php.ini

```
[mail function]
; For Win32 only.
; https://php.net/smtp
SMTP = <serveur_smtp_hote>
; https://php.net/smtp-port
smtp_port = <serveur_smtp_port>

; For Win32 only.
; https://php.net/sendmail-from
sendmail_from = <serveur_smtp_mail_envoi>

; For Unix only.  You may supply arguments as well (default: "sendmail -t -i").
; https://php.net/sendmail-path
;sendmail_path = <adresse_de_outil>

; Force the addition of the specified parameters to be passed as extra parameters
; to the sendmail binary. These parameters will always replace the value of
; the 5th parameter to mail().
;mail.force_extra_parameters =

; Add X-PHP-Originating-Script: that will include uid of the script followed by the filename
mail.add_x_header = Off

; The path to a log file that will log all mail() calls. Log entries include
; the full path of the script, line number, To address and headers.
;mail.log =
; Log mail to syslog (Event Log on Windows).
;mail.log = syslog
```

#### 1.1.3 - Gestion du service Php

1. Démarrer le service Php :

    ```
    apachectl start
    ```
2. Stopper le service Php :

    ```
    apachectl stop
    ```

3. Redémarrer le service Php :

    ```
    apachectl restart
    ```
    
#### 1.1.4 - Installation de Xdebug

> Si besoin, la doc. **Xdebug** se trouve ici : [https://xdebug.org/docs/install#pecl](https://xdebug.org/docs/install).

Afin de pouvoir installer **Xdebug** sur macOS, il est nécessaire d'avoir **Homebrew** et **PECL** d'installer.

> **NB : PECL** est nativement installé sur macOS, tel que **PHP**.

Vérifions cela :

##### ==> **Hombrew** avec la commande `brew`.

```
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

```
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

```
pecl install xdebug

ou

pecl install xdebug-<version>
```

> Pour **PHP** 7.1.33, la version 2.9.8 de **Xdebug** est bien compatible.
> Nécessaire pour **Valet** non compatible avec **PHP** 7.2 ou +.

L'installation devrais se terminée avec le message ci-dessous :

```
Build process completed successfully
Installing '/usr/local/Cellar/php/8.1.5/pecl/20210902/xdebug.so'
install ok: channel://pecl.php.net/xdebug-3.1.4
Extension xdebug enabled in php.ini
```

## 2 - Sur Mac OS
[Haut de page](#top)

Voici une liste de packages utiles pour le développement sur **Mac OS** :

- [2.1 - Xcode](#21---xcode)
- [2.2 - Homebrew](#22---homebrew)
- [2.3 - Packages utiles](#23---packages-utiles)

### 2.1 - Xcode
[Haut de page](#top)

Sur Mac OS, il est nécessaire d'installer **Xcode** pour pouvoir installer **Homebrew** ou la plupart des packages.

Télécharger **Xcode** sur l'App Store, puis lancez-le et suivez les instructions.

Ensuite, il est nécessaire d'installer les outils en ligne de commande :

```
xcode-select --install
```

### 2.2 - Homebrew
[Haut de page](#top)

_**A - Qu'est-ce que ?**_

**Homebrew** est un gestionnaire de paquets pour macOS, tous est détaillé [ici](https://brew.sh/index_fr).

_**B - Installation**_

Pour installer homebrew, il suffit d'executer la comande ci-dessous :

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

_**C - Installer un paquet**_

Voici la commande :

```
brew install <paquet>
```

Un nombre important de paquets est disponible, il suffit de taper `brew search` pour avoir la liste ou de consulter La liste des paquets disponible [ici](https://formulae.brew.sh/formula/).

### 2.2 - Packages utiles
[Haut de page](#top)

Voici une suite commande pour installer plusieurs paquets utiles pour le développement :

```
brew install zip wget nano tree git gcc
brew install php@7.2 php@7.3 php@8.0 php@8.3
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


## 3 - Sur Linux
[Haut de page](#top)

_**A venir...**_