Voiçi mon tuto pour GIT sans utiliser visuo studio code


INITIALISATION DU DEPOT

Il faut déja créer un nouveau dépot:
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:DanielC-N/depot_git.git
git push -u origin main


SSH

Après, il faut sécuriser notre dépot:
ssh-keygen -t ed25519 -C "votre email"

Il faut vérifer si ça marche:
eval "$(ssh-agent -s)"

et après l'ajouter au dictionnaire:
id_rsa == votre clef privée
ssh-add ~/.ssh/id_rsa

Tester si ça fonctionne:
ssh -T git@github.com


MANIPULATION DE BRANCH ET MODIFICATIONS

Pour commencer les modifications vous devez cloner le dépot en utilisant le lien du code en SSH:
git clone git@github.com:nicolaspatigny/depot_git.git

Vous allez créer un nouvelle branche avec:
git checkout -b "nom de branche"

Pour voir toute les branches en local:
git branch

Pour voir toutes les branches au serveur:
git branch -r

Pour supprimer une branche:
git branch -d "nom de branche"

En suite vous faites les modifications que vous voulais faire et après vous retourner a la main branche:
git checkout main

Après avoir fait les modifications vous devez faire:
git pull

Vous faites un commit pour demander a sauvegarder les modifications avec:
git commit -am "nom du commit pour se rappeler des modifications"

Il faut aussi faire:
git add "nom du fichier"

Vous pouvez utiliser cette commande pour vérifier que tous a fonctionner:
git status

Pour finir vous faites cette commande pour pousser les modifications au répertoire:
git push 


PILE

Pour créer une pile:
git stash

Pour enlever le premier élément de la pile:
git stash pop

Pour supprimer la pile:
git stash clear

Pour afficher le stash:
git stash list

Pour voir ce qui a été changer dans la pile:
git stash diff

Voiçi le tuto de git
