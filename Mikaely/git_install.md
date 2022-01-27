# **Documentation**

## _Installations_ :

### **Git :** 
Pour *installer* Git sur notre PC il va nous falloir une console :
- WSL 
- Git bash
- Cygwin
- Power Shell

Sur cette console, peu importe le choix, on entre les commandes suivantes :
1) - /$ sudo apt-get install git 
2) - entrer le mot de passe utilisateur : "your password"

### **SSH :**
Dans le but d'établir la connexion Git-Github par via SSH, on se sert des commandes suivantes :
```bash
+ // ssh-keygen -t rsa -b 4096 -C "adresse@email.com" (*adresse mail du compte GitHub*)
+ Entrer le nom de votre dépôt et sélectionner un mot de passe
+ // eval "$(ssh-agent -s)"
+ // ssh-add ~/.ssh/id_rsa (*ici, id_rsa est la clé privée générée ayant l'extension ".pub" à la fin*)
```
On ouvre ensuite une deuxième console en parralèle et on y rentre les commandes suivantes :
```bash
+ // mv "votre_clé-privée".pub
 
```
je modif pour le fun