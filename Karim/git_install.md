
# Documentation

## Installations

### Git :
Voici les étapes à suivre pour installer le Git
* Connectez-vous à votre terminal (ex: WSL, Powershell, GitConsole, Windows Terminal...etc) 
* Tapez la commande suivante: $apt-get install git

### SSH :

Afin d'initialiser la connection Git-Github par SSH, voici les étapes à suivre:
``` bash
* ssh-keygen -t rsa -b 4096 -C "example@email.com"
* Donnez un nom à la clé que vous venez donc de générer
* Créer un mot de passe
* cat nomdevotreclé.pub 
* Copiez la clé et collez-la sur github (Pour ce faire, connectez-vous à votre compte github, allez dans vos paramètres, puis dans 'SSH and GPG keys, New SSH key)
* Terminer avec la commande suivante: ssh -T git@github.com
```

## Utilisation

des trucs nouveaux
j'ai modifié des trucs

### Initialisation