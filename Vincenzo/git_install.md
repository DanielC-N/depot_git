
---
# Ma documentation


## 1. Installations

---
### GIT

Voici la liste des commandes pour installer Git et le paramétrer à partir de zéro

- ```bash
    sudo apt-get install git
    ```

- ```bash
    git config –global user.name “USERNAME”
    ```

- ```bash
    git config –global user.email “EMAIL”
    ```

- ```bash
    git config –global core.editor YOUR EDITOR
    ```



---
### SSH

On doit d'abord créer une clé publique et privée :

- ```bash
    cd ~/.ssh
    ssh-keygen -t rsa -b 4096 -C «EMAIL »
    ```

Pour vérifier si l'agent est actif :

- ```bash
    eval "$(ssh-agent -s)"
    ```

On doit ajouter la clé privée à la bibliothèque

- ```bash
    ssh-add "nom de clé privée"
    ```

Pour se connecter au GIT : 

- ```bash
    ssh -T git@github.com
    ```
---
## Utilisation de GIT

---
### Initialisation

- ```bash
    git init
    ```

- ```bash
    git add .
    ```

- ```bash
    git commit -am “initial commit” 
    ```

- ```bash
    git branch -M main
    ```
- ```bash
    git remote add main git@github.com:#Lien de ton dépot
    ```
- ```bash
    git push -u origin main
    ```

git branch --> voir les branches
git branch -d --> Supprm branche
git branch -D --> Forcer le delete de la branche
git merge "name" --> Pour appliquer les modif de la branche sur la branche actuelle
git diff --> voir les différences exact
git push origin -d  "branch" --> Pour supprimer la branche en ligne
!!!!!!!!! Ne jamais utiliser d'autres commandes forcées autre que le branch -D !!!!!!!!

le rôle du .gitignore :
Pour skipper les fichiers lors du git add :
**/*.o --> Tout les fichiers .o dans les dossiers; sous dossiers etc

git stash pop 
--> prendre le dernier élément stash pour le récupérer
git stash list
--> Pour lister les stash
git stash clear
--> effacer le stash
git stash drop stash@{1}
--> Supprimer le slash 1 dans ce cas

---
# Regarder comment fonctionne le git stash

