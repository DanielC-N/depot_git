
---
# Ma documentation


## 1. Installations

---
### 1.1 GIT

Voici la liste des commandes pour installer Git et le paramétrer à partir de zéro

- ```bash
    sudo apt-get install git
    ```

- ```bash
    git config –-global user.name “USERNAME”
    ```

- ```bash
    git config –-global user.email “EMAIL”
    ```

- ```bash
    git config –-global core.editor YOUR EDITOR
    ```



---
### 1.2 SSH

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
## 2. Utilisation de GIT

---
### 2.1 Initialisation

```bash
git init

git add .

git commit -am “initial commit” 

git branch -M main

git remote add main git@github.com:#Lien de ton dépot

git push -u origin main
```

---

### 2.2 Manipulation de branch

- Pour voir les branches 
```bash
    git branch
```

- Pour supprimer une branche 
```bash
    git branch -d
```

- Pour forcer le delete de la branche
```bash
    git branch -D
```

- Pour appliquer les modifications de la branche actuelle
```bash
    git merge "name"
```

- Pour voir les différences 
```bash
    git diff
```

- Pour supprimer la branche en ligne
```bash
    git push origin -d "branch"
```

- Pour récupérer les données sur un serveur
```bash
    git fetch "BRANCH"
```

- Un fetch se suit d'un merge
```bash
    git merge "BRANCH"
```

---

**!!!!! Ne jamais utiliser d'autres commandes forcées autre que le branch -D !!!!!**

---

### 2.3 Manipulation de Stash

- Pour prendre le dernier élément stash pour le récupérer
```bash
    git stash pop
```

- Pour lister les stash 
```bash
    git stash list
```

- Effacer le stash
```bash
    git stash clear
```

- Supprimer le slash 
```bash
    git stash drop stash@{INDEX}
```
**Attention ! Le drop change l'index !**

## 3. Rôle du .gitignore 

### Il nous sert à skipper les fichiers lors du git add

---

#### Exemple : 
Tout les fichiers .o dans les dossiers et les sous dossiers

```bash
**/*.o
```

---

## 4. Manipulation

<br />
 
### 4.1 Initialiser (cf. 2.1 Initialisation)
```bash
git init

git add .

git commit -am “initial commit” 

git branch -M main

git remote add main git@github.com:#Lien de ton dépot

git push -u origin main
```
### 4.2 Ajouter une nouvelle branche "test"
```bash
git checkout -b test
```
### 4.3  Faire toutes les modifications nécessaires  
<br />

>   Imaginons que nous ajoutons "Début test" dans un fichier.  
>   Par la suite, si vous éxécutez la commande "git status" ou "git diff".   
>   vous allez voir les modifications que vous avez faites.

### 4.4 Mettre à jour
<br />

> Nous avons maintenant besoin de sauvegarder vos modifications
```bash
git commit -am "ajout Début test"
```
### 4.5 Ajouter sur le git
<br />

> Maintenant que nous avons tout sauvegardé, nous devons push les modifications sur votre GIT.  

```bash
git push
``` 

### 4.6 Fusionner les branches
<br />

> Une fois que notre branche "test" est fonctionnelle et opérationnelle, nous allons la fusionner à la branche main et supprimer la branche "test" et ensuite ajouter de nouveau les modifications.  

```bash
git checkout main
git merge test
git branch -d test
git push
```

**Nous avons terminé !**