<a name="top"></a>

[<== Revenir à la page principale du projet](../../)

# Packages et commandes

## Sommaire

- [1 - Paquets utils](#1---Paquets-utils)
- [2 - Divers installations](#2---Divers-installations)
    - [2.1 - Installation de `ifconfig`](#21---Installation-de-ifconfig)
    - [2.2 - Insllation du serveur web Apache](#22---Insllation-du-serveur-web-Apache)
    - [2.3 - Status du serveur web Apache et autres services](#23---Status-du-serveur-web-Apache-et-autres-services)
    - [2.4 - Arrêter l'OS](#24---Arrêter-l'OS)

## 1 - Paquets utils
[Haut de page](#top)

| Paquet | Détails | MacOS | Debian 11 | Ubuntu Desktop 22.04 LTS | Ubuntu Server 22.04 LTS |
|---|---|---|---|---|---|
| **Outils client** |
| `lsb-release` | base standartd de linux |✅ |✅ |✅ [déjà installé] |✅ |
| `gnupg` | implémentation complète et gratuite du standard OpenPGP [gnupg.org](https://gnupg.org/) |✅ |✅ |✅ [déjà installé] |✅ |
| `tree` | générateur d'arborescence de fichier sous forme d'arbre |✅ |✅ |✅ |✅ |
| `nano` | un éditeur de texte pour console |✅ |✅ |✅ |✅ |
| `xemacs21` | un éditeur de texte pour X Window |✅ |✅ |✅ |✅ |
| **Outils réseau** |
| `nmap` | scanner de ports libre |✅ |✅ |✅ |✅ |
| `hping3` | testeur de liaison par paquets |✅ |✅ |✅ |✅ |
| `net-tools` | un ensemble de programmes de contrôle du sous-système réseau du noyau Linux | ❌ | ✅ | ✅ | ✅ |
| `tcpdump` | un analyseur de paquets en ligne de commande |✅ |✅ |✅ |✅ |
| `mlocate` | |✅ |✅ |✅ |✅ |
| **Téléchargeur** |
| `curl` | téléchargeur |✅ |✅ |✅ |✅ |
| `wget` | téléchargeur | ✅ | ✅ [déjà installé] | ✅ | ✅ |
| **Certificats SSL** |
| `openssh-server` | un ensemble d'outils des communications sécurisées **SSH** | ✅ | ✅ [déjà installé] | ✅ | ✅ |
| `ca-certificates` | gestionnaire des certificats | ✅ | ✅ [déjà installé] | ✅ | ✅ |
| `letsencrypt` | générateur de certificat **SSL** | ✅ | ✅ [déjà installé] | ✅ | ✅ |
| **Serveur fichiers** |
|...||||||
|...||||||
| **Serveur mail** |
| `postfix` | serveur de mail |✅ |✅ |✅ |✅ |
| **Serveur web** |
| `apache2` | serveur web HTTP |✅ |✅ |✅ |✅ |
| `nginx` | serveur web |✅ |✅ |✅ |✅ |
| **Serveur de données - SQL** |
| `mysql-client-core-5.7` | mysql server 5.7 |✅ |✅ |✅ |✅ |
| `mysql-server` | mysql server |✅ |✅ |✅ |✅ |
| **Serveur d'automatisation** |
| `jenkins` | outil open source de serveur d'automatisation |✅ |✅ |✅ |✅ |
| **Langages et compilateurs** |
| `gcc` | compilateur langage C |✅ |✅ |✅ |✅ |
| `php` | compilateur PHP |✅ |✅ |✅ |✅ |
| `python3` | compilateur Python |✅ |✅ |✅ |✅ |
| `default-jre` | Java Runtime Environnement |✅ |✅ |✅ |✅ |
| **Debian** : `openjdk-8-jdk` **Ubuntu** : `default-jdk` ou `openjdk-8-jre-headless` | Java Developpement Kit (compilateur java inclu) | ✅ | ✅ Dispo. vers. : 11, 17 | ✅ Dispo. vers. : 8, 11, 17, 18 | ✅ |
| **Gestionnaires de dépendances de paquets** |
| `composer` | gestionnaire de dépendances **PHP** |✅ |✅ |✅ |✅ |
| `nodejs` | gestionnaire de dépendances **JS** pour **NodeJS & NPM** |✅ |✅ |✅ |✅ |
| `maven` | gestionnaire de dépendances **Java** |✅ |✅ |✅ |✅ |
|**Autres commande**|
| `shutdown` | arrêt du système |✅ |✅ |✅ |✅ |

## 2 - Divers installations
[Haut de page](#top)

### 2.1 - Installation de `ifconfig`
[Haut de page](#top)
	
| OS | Commande |
|---|---|
| Debian 11 | `...` |
| Ubuntu Desktop 22.04 LTS | `sudo apt install net-tools` |
| Ubuntu Server 22.04 LTS | `sudo apt install net-tools` |

### 2.2 - Insllation du serveur web Apache
[Haut de page](#top)

| OS | Commande |
|---|---|
| Debian 11 | `...` |
| Ubuntu Desktop 22.04 LTS | `sudo apt install apache2 -y` |
| Ubuntu Server 22.04 LTS | `sudo apt install apache2 -y` |

Apache est ensuite disponible à l'url [http://127.0.0.1](http://127.0.0.1) avec un guide qui s'affiche.

### 2.3 - Status du serveur web Apache et autres services
[Haut de page](#top)

| OS | Commande |
|---|---|
| Debian 11 | `...` |
| Ubuntu Desktop 22.04 LTS | `systemctl status <service>` |
| Ubuntu Server 22.04 LTS | `systemctl status <service>` |

Exemple :

```
systemctl status apache
```

```
service --status-all
```

### 2.4 - Arrêter l'OS
[Haut de page](#top)

| OS | Commande |
|---|---|
| Debian 11 | `...` |
| Ubuntu Desktop 22.04 LTS | `shutdown -h now` |
| Ubuntu Server 22.04 LTS | `shutdown -h now` |