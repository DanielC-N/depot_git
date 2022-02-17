# [Lien](https://www.youtube.com/watch?v=X_8Nh5XfRw0)


# DOCUMENTATION



# installations

## GIT
```bash
apt get install git
```
## SSH
### Generer une clé ssh
```bash

ssh-keygen -t rsa -b 4096 -C "votre adresse mail"

eval "$(ssh-agent -s)"
```
###ajouter sa clé privé au dictionnaire
```bash
ssh-add ~/.ssh/id_rsa 
```
##ou
```bash
#ss-add "nom du fichier ou est stocké la clé ssh"
```
##tester si ca marche
```bash
#ssh -T git@github.com
```
# utilisation de git  
## initialisation d'un nouveau repository

```bash

 git config --global user.mail ""
 git config --global user.name ""
 git init  
 git add .
 git commit -m  "votre message"
 git branch -M nom du fichier   
 git remote add origin git@github.com  chemin du fichier
 git push -u origin main  
```


 ##commandes à savoir

```bash
 git pull: permet de tirer des modifications à partir du serveur main
 git diff: permet de voir les modifications apportées sur un fichier
 git log: permet de voir le moment ou les lignes ont été modifiés
 git stash: prend nos modifs et les empile ailleurs
 git stash pop : prend et enlève l'element le plus recent de la pile
 git stash clear: supprime les éléments de la liste
 .gitignore: les fichiers qui seront ignorés par la commande git add .
 **/*.extensions à supprimer
 ```

## manipulation des branches
```bash

git branch:permet de créer une branche
git checkout -b "nom de la branche":permet de créer une nouvelle branche
git branch –d "nom branche":supprime une branche
git checkout "nom branche":permet de passer d'une branche à une autre
git merge "nom branche": La commande git merge est utilisée pour fusionner une branche dans la branche active
git squash: permet de reunir tous les commits précedents en un
git branch -r :affiche les branches presentent sur la branche principale
git fetch: prend et compare le contenu du serveur et celui de local
git merge:permet de faire fusionner deux branches
git push origin -d "nom branche":supprime une branche en remote
```

##cas pratique: je souhaite coder une nouvelle fonctionnalité
```bash

Je veux créer une nouvelle branche appeler "toto";  git checkout -b toto  
passer de ma branche main à ma branche "toto"; git checkout toto  
aller dans mon editeur de code préferé "perso VScode" coder  
enregistré  
puis revenir sur la console; faire git add . pour sauvegarder  
puis git commit -am "intitulé des modifications apportées"  
puis faire git push  
puis git merge main; pour fusionner la branche "toto" et la branche "main"  
supprimer ma branche "toto"; git branch -d toto; Oups ca ne marche pas!  
c'est normal il faut d'abord quitter la branche "toto"; git checkout main  
là on peut la supprimer; git branch -d toto

```




