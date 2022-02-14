
# Documentation

## Installations

### Git :
Voici les étapes à suivre pour installer le Git
* Connectez-vous à votre terminal (ex: WSL, Powershell, GitConsole, Windows Terminal...etc) 
* Tapez la commande suivante: 
``` bash
apt-get install git
```
### SSH :

Afin d'initialiser la connection Git-Github par SSH, voici les étapes à suivre:
``` bash
ssh-keygen -t rsa -b 4096 -C "example@email.com"
```
* Donnez un nom à la clé que vous venez donc de générer
* Créer un mot de passe
``` bash
cat nomdevotreclé.pub 
```
* Copiez la clé et collez-la sur github (Pour ce faire, connectez-vous à votre compte github, allez dans vos paramètres, puis dans 'SSH and GPG keys, New SSH key)
* Terminer avec la commande suivante:
``` bash
ssh -T git@github.com
```
* Si elle ne marche pas, essayez:
```bash
ssh -T git@github.com -i "nomrepo"
```
### HTTPS :

```bash
git remote add origin https://github.com/"username"/"repositoryname".git
```

## Utilisation



### Initialisation

Pour initialiser un dépot git, il faut taper certaines commandes dans votre terminal

``` bash
git init
git add .
git commit -am "nomdecommit"
git branch -M main
git remote add git@github.com/"votreusername"/
git push -u origin main
```
Vous pouvez vérifier si le git a été crée avec la commande suivante 
```bash
ls -la
```
Si le commit ne marche pas, l'outil git config vous permet de modifier certaines données ou utilités:

Votre identité: (mettre nom d'utilisateur et email entre "")
```bash
git config --global user.name ""
git config --global user.email ""
```
Votre éditeur: (vim ou nano)
```bash
git config --global core.editor nano
```
ou

```bash
git config --global core.editor vim
```
Pour visualiser le fichier config:
```bash
cat .gitconfig
```

### Manipulation de branches

* Pour créer une nouvelle branche, voici la commande à taper:

``` bash
git checkout -b "nomdelanouvellebranche"
```
* Pour savoir sur quelle branche vous vous situez, tapez:
```bash
git branch
```
* Pour se positionner sur une certaine branche, il faut taper:

```bash
git checkout "nomdelabranche"
```
* Pour supprimer une branche:

```bash
git branch -d "nomdelabranche"
```

* Pour forcer la suppression d'une branche:
```bash
git branch -D "nomdelabranche"
```

* Pour visualiser les branches en remote (sur le repository):
```bash
git branch -r
```

* Pour supprimer une branche en remote:
```bash
git push origin -d "nombranche"
```

### Manipulation de piles

* Pour prendre les modifications en cours, avant un commit, et les mettre en haut de la pile:

```bash
git stash 
```

* Pour appliquer les modifications situées dans une pile (le "fake commit" le plus ancien storé dans la pile):
```bash
git stash pop
```

* Pour choisir un élément de la pile à "commit":
```bash
git stash pop stash@{"numero"}
```

* Pour lister les stash storés:
```bash
git stash list
```

* Pour vider la pile:
``` bash
git stash clear
```

* Pour enlever un élément de la pile:
```bash
git stash drop stash@{"numero"}
```
### Visualiser les modifications effectuées

* Pour voir les fichiers qui ont été modifiés:
```bash
git status
```

* Pour voir les fichiers qui ont été modifiés ainsi que les modifications:
```bash
git diff
```

* Pour voir tous les commits effectués:
```bash
git log
```
### Autres commandes utiles

* Pour réunir plusieurs commit en un seul:
```bash
git merge --squash "nombranche"
```
* Pour voir si l'agent est actif du SSH:
```bash
eval "$(ssh-agent -s)"
```

* Pour ajouter votre clé privée au dictionnaire:
```bash
ssh-add ~/.ssh/"nomrepo"
```

* Cette commande va faire un commit qui va automatiquement se mettre sur une nouvelle branche:
```bash
git push --set upstream origin "branchex"
```

* Pour prendre l'arborescence de master: (équivalent de fetch and merge)
```bash
git pull
```
* Enfin, le fichier gitignore permet d'omettre des fichiers du git add . et donc ces fichiers ne seront pas "pushed" ou "commit"...etc. On peut également omettre tous les fichiers qui possèdent une certaine extension avec la syntaxe suivante: exemple:
```bash
**/*.o
```

## Cas pratique:

Nous allons maintenant mettre en pratique tout ce qu'on a appris jusqu'à présent.  
Exercice: Nous voulons coder une nouvelle fonctionnalité 

* Pour cela, il faut dans un premier temps initialiser le git en utilisant les commandes ci-dessus. (voir Utilisation/Initialisation)  
* On créée une nouvelle branche:
```bash
git checkout -b "fonctionnalite"
```
* Maintenant on créé un fichier en php car on veut montrer différentes façons de créer un tableau dans ce langage de programmation.
```bash  
touch tables.php
```
* On commence à coder dans ce fichier et à la fin de la journée, avant d'arrêter de travailler, on veut faire un commit pour ne pas perdre notre progrès et puis tout 'pusher' :)

* Attention, il faut avant ajouter notre nouveau fichier dans la liste des fichiers que gère le git. On fait donc:
```bash
git add "tables.php"
```
* Maintenant, on peut faire notre premier commit sans problème et faire un git push.
```bash
git commit -am "premiercommit"
git push
```
* Le lendemain, on continue notre travail, et on ajoute deux autres moyens de créer un tableau en php, commit après chacun des deux et à la fin de la journée.... ON PUSH, oui!  
(généralement une fonction équivaut un commit)
```bash
git commit -am "deuxiemecommit"
git commit -am "troisièmecommit"
git push
```
* Le jour suivant, on termine notre projet. Génial ! On fait donc un dernier commit pour tout mettre à jour et un push biensur.
```bash
git commit -am "finalcommit"
git push
```
* Maintenant, on peut merge notre branche dans le main sachant qu'il faut se positionner d'abord sur la branche main. On utilise donc les commandes suivantes:
```bash
git checkout main
git merge fonctionnalite
```
* Et puis un dernier push pour l'envoyer au serveur!
```bash
git push
```

Voila! Maintenant, vous êtes prêt pour commencer un projet avec l'outil git! Bravo!


