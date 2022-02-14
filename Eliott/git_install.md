```bash
1.Installations Git
- sudo apt-get install git 
entrer le mot de passe "mdp"
```

```bash 
2.SSH :
Commande Pour SSH

- ssh-keygen -t rsa -b 4096 -C "email" 
. Nom du depot + mdp
- ssh-add ~/.ssh/id_rsa 
Dans une autre console,
- mv "Clé".pub

```
```bash
3.A Config :
Username

- git config --global user.name "Nom"

Email

- git config --global user.email "Email"
```

```bash
Readme :
Création :
Il faut: Un dossier,Un éditeur de texte et faire les commandes suivantes

 -git init
 -git add README.md  
 -git commit -m "first commit"
 -git branch -M main
 -git remote add origin https://github.com ""/git.git
 -git push -u origin main
```

```bash
3.B Pour Modif Le Readme rapidemment :

-Vim readme.md

Vim est un éditeur de texte dans la console.

Pour sortir nous fesons echap puis
-wq

- .gitignore  "nom du fichier"
    Fichier non pris en compte - git add .
- .gitignore "**/*.o" 
    tous les fichiers avec l'extension mentionnée ici ".o" ne sont pas pris en compte
```


```bash
4.Commandes de Base :
- git init 
    init un repository
- git add . / Git add "fichier"
    Marque les fichiers
- git commit -[am] "message"
    Modif de manière instantané 
- git push 
    Inverce de pull du local au serveur
- git commit 
    Checkpoint en local
- git fetch 
    Regarde si conflits 
- git statues 
    Indique les modif du repositories
- git pull =  git fetch + merge
    Tirer du serveur au local
- git merge 
    apporte des changements, modif
- git diff 
    montre les changements apportés au
    fichier modifiés 
``` 

```bash
5.Commandes Branch :
- Git checkout -b "Nom branche" 
    créer uhe nouvelle branche
- git checkout "nom branche" 
    affiche les modif de la branche
- git branch 
    Liste les branches
- git merge "nom de la branche" 
    modif de la branche a la branche main
- git branch -d "nom de la branche"
    pour supprimer une branche en local
- git branch 
    Liste les branches
- git branche -r 
    liste branch du serveur
- git checkout main 
    revenir sur la branche principale
- git push origin -d "branche"
    supprimer une branche dans le repositorie

```
```bash
6.Commandes Stash :
- git stash 
    une pile d'éléments
- git stash pop 
    enlève le premier élément de la pile
- git stash drop stash@{'element a suppr'} 
    supprime l'element précis de la file

```


```bash 
7.Cas Pratique : 
Nous allons faire un cas pratique pour vous aidez a comprendre quelques lignes de codes présentes ci-dessus.

Exemples: On ajoute un nouveau niveau dans notre jeu que nous avons coder :

La première chose a faire est de crée une nouvelle branche
```

```bash
-git checkout -b "Niveau5"
```
On écrit notre code du niveau dans un fichier et nous n'oublions pas de l'ajouter et de faire des chekpoint dans celui-ci.
```bash 
-git commit -am "Nombre_de_modif_du_code"
```
On Push en général a la fin de la journer pour tester.

```bash
-git push 
```

Lorsque notre projet est finis, nous fesons un merge de la branche "Niveau5" avec le main.
(Ne pas oubliez de revenir sur la branche main).

```bash 
(Revenir sur le main)
-git checkout main

(Fusionner les deux branches)
-git merge niveau5
```
Puis nous finissons par push une derniere fois notre travail sur le serveur.

```bash 
-git push
```
Et voila votre niveaux 5 est en ligne =)

Bravo,restez connecter pour le prochain tuto.




