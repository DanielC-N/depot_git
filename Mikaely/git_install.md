# **Documentation**

## _Installations_ :

### **Git :** 
Pour *installer* Git sur notre PC il va nous falloir une console :
- WSL 
- Git bash
- Cygwin
- Power Shell

Sur cette console, peu importe le choix, on entre les commandes suivantes :
```bash
+ // sudo apt-get install git 
entrer le mot de passe utilisateur : "your password"
```
</br> 
</br> 

### **SSH :**
Dans le but d'établir la connexion Git-Github par via SSH, on se sert des commandes suivantes :
```bash
+ // ssh-keygen -t rsa -b 4096 -C "adresse@email.com" (adresse mail du compte GitHub)
+ Entrer le nom de votre dépôt et sélectionner un mot de passe
+ // eval "$(ssh-agent -s)"
+ // ssh-add ~/.ssh/id_rsa (ici, id_rsa est la clé privée générée ayant l'extension ".pub" à la fin)
```
On ouvre ensuite une deuxième console en parralèle et on y rentre les commandes suivantes :
```bash
+ // mv "votre_clé-privée".pub
```
</br> 


### **Configuration :**

#### **Username :** 

Pour modifier votre nom dans la mémoire git de votre ordinateur, il suffit d'entrer la commande suivante :
```bash
+ // git config --global user.name "your name"
```
sans oublier, bien sûr, de remplacer "your name" par nom que vous souhaitez utiliser
</br> 
</br> 

#### **Email :** 
Tout comme pour le nom, vous pouvez également connfigurer votre adresse mail en entrant la commande suivante: 
```bash
+ // git config --global user.email "your email"
``` 
encore une fois, remplacer "your email" par le votre
</br> 
</br> 
</br> 

## _Readme_ :

### **Création :** 
Pour créer notre Readme, il nous faut tout d'abord un éditeur de texte (VScode ou autre). Puis, créer un dossier "peu_importe_le_nom" et à l'intérieur de ce dernier, un fichier "README.md"<br/>
<br/>
Retourner sur la console WSL et entrer les commandes suivantes: 
```bash 
+ // echo "# first-git" >> README.md
+ // git init
+ // git add README.md  
+ // git commit -m "first commit"
+ // git branch -M main
+ // git remote add origin https://github.com
    "yourgitusername"/first-git.git
+ // git push -u origin main
``` 
</br> 
</br> 

### **Modification :** 
La modification de notre Redame est possible depuis notre console en ouvrant une fênetre spécial à l'aide de la commande suivante : 
```bash
+ // vim README.md
"écrire les modifications désirées" 
```
Vim est un éditeur de texte dans le terminal. Comme alternative on a nano qui est plus simple et facile à utiliser contrairement à vim qui est, certes, plus difficile mais plus puissant 
</br>
Pour sortir de Vim, on applique :
```bash
- on appuie sur la touche [échap]
+ // :wq 
``` 
</br>
</br>

## _Commandes à connaître_ :

Pour se familiariser avec Git, il y a quelque commande indispensable qu'il est utile de connaître. Parmi elles se trouvent celles utilisées pour la création de notre Readme ou d'autres encore :

```bash
+ // Git init 
    cette commande sert à initialiser un repository
```
```bash
+ // Git add .  OU Git add "nom_du_fichier"
    marque tous les nv fichiers pour que ceux ci soient
    inclus dans le commit (sera vu par la suite)
```
```bash
+ // Git commit -[am] "message commit"
    fait le git add auto sauf pour les fichiers qui ont été crée, le -a normalise les modif
```

```bash
+ // Git pull =  git fetch + git merge
    tirer un remote repository vers soit, on tire les chnagements du serveur vers son user
```
```bash
+// Git push 
    tirer le local vers le repository, on tire les changements du local vers le serveur
```
```bash
+ // Git commit 
    pour créer un checkpoint en local
```
```bash
+ //Git statues 
    pour voir les modif du repo
```
```
+ //fork =  fetch and merge
    pour cloner un repo d'un git à mon git 
```
```
+ // Git fetch 
    attrape et compare pour voir si il y a des conflits
+ // Git merge 
```
```
+ // Git checkout -b "nom de la nvl branche" 
    créer uhe nouvelle branche à partir du main
```
```
+ // git checkout "nom de la branche" 
    affiche les modif de la branche
```
```
+ // git branch 
    pour lister les branches
+ // git branch -r 
    pour afficher les branches du server
```
```
+ // git checkout main 
    revenir sur la branche principale
```
```
+ // git merge "nom de la branche" 
    ajoute les modif de la branche a la branche main
```
```
+ // git diff 
    avant un commit affiche les changements apportés au(x) fichier(s) modifiés 
```
```
+ // git stash 
    une file d'éléments
```
```
+ // git stash pop 
    enlève le premier élément de la file
```
```
+ // git stash drop stash@{'element a suppr'} 
    supprime l'element voulu de la file
```
```
+ // git branch -d "nom de la branche"
    pour supprimer une branche en local
```
```
+ // git push origin -d "branche"
    supprimer une branche en remote
```
```
+ // .gitignore  "nom du fichier"
    prend tous les dossiers/fichiers qu'on ne veut pas prendre en compte dans le git add.
+ // .gitignore "**/*.o" 
    tous les fichiers avec l'extension mentionnée ici ".o"
```