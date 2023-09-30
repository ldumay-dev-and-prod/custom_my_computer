<a name="top"></a>

[<== Revenir à la page principale du projet](../../)

# Optimiser l'explorateur de fichier

Dans l'idée de rendre l'explorateur de fichier plus agréable à utiliser, il est intéressant d'afficher les **fichiers et dossiers cachés** et les **extensions de fichiers**.

## Sommaire

- [1 - Sur Windows](#1---sur-windows)
- [2 - Sur Mac OS](#2---sur-mac-os)
    - [2.1 - Afficher l’ensemble des répertoires et fichiers cachés](#21---afficher-lensemble-des-répertoires-et-fichiers-cachés)
    - [2.2 - Masquer l’ensemble des répertoires et fichiers cachés](#22---masquer-lensemble-des-répertoires-et-fichiers-cachés)
- [3 - Sur Linux](#3---sur-linux)

## 1 - Sur Windows - [Haut de page](#top)

_**A venir...**_

## 2 - Sur Mac OS - [Haut de page](#top)

### 2.1 - Afficher l’ensemble des répertoires et fichiers cachés - [Haut de page](#top)

Pour afficher l’ensemble des répertoires et fichiers cachés sur **Mac OS**, il faut passer par l’outil **Terminal**.

> Accès au **Termnial** :
> - Depuis : les _**Applications > Utilitaires > Terminal**_
> - Ou : _**cmd + espace**_ puis saisir _**Terminal**_ et valider.

Dans le **Terminal**, il faut saissir la commande suivante :

```
defaults write com.apple.finder AppleShowAllFiles -bool true
```

Celle-ci permet d’afficher les fichiers cachés dans le Finder.

Puis il est nécessaire de redémarrer le Finder en saisissant à l'aide de la commande suivante :

```
kill all Finder
```

Le Finder dois se redémmarer.

Désormais, tous les fichiers et répertoires cachés s’afficheront quel que soit l’emplacement où ils se situent.

### 2.2 - Masquer l’ensemble des répertoires et fichiers cachés - [Haut de page](#top)

A l'inverse, pour masquer l’ensemble des répertoires et fichiers cachés, il suffit de saisir la même commande indiquée plus haut en remplaçant la valeur **true** par **false**, tel que :

```
defaults write com.apple.finder AppleShowAllFiles -bool false.
```

Puis de redémarrer le Finder à l'aide de la commande suivante :

```
kill all Finder
```

Voilà, les fichiers et répertoires cachés ne s’afficheront plus.

## 3 - Sur Linux - [Haut de page](#top)

_**A venir...**_