# depot_git instruction

Depôt exemple de tutos d'installation de git et de son utilisation.  

# But

Ce dépôt est à but pédagogique. Il ressence les différents tutoriels d'installations écrit par les élèves.

# Utilisation

## Pré-requis

Faire partie de la classe.

## Méthode

* Faire un *fork* du dépôt.
* Modifier le code.
* faire un *merge request*.

# Markdown

## Exemples d'utilisations

### Tutoriel pratique français

https://www.markdowntutorial.com/

### Tutoriel pratique anglais
https://commonmark.org/

## Documentation

### Bases (français)

https://documentation-snds.health-data-hub.fr/contribuer/guide_contribution/tutoriel_markdown.html#titres

### Bases (anglais)

https://www.markdownguide.org/basic-syntax/

### Avancé (anglais)

https://www.markdownguide.org/extended-syntax/

### Expert (anglais)

https://spec.commonmark.org/0.28/

# Git

## Créer un nouveau dépôt à partir de zéro

```bash
echo "# depot_git" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:DanielC-N/depot_git.git
git push -u origin main
```

# SSH

## Pour le .bashrc

```bash
env=~/.ssh/agent.env

agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

agent_start () {
            (umask 077; ssh-agent >| "$env")
                . "$env" >| /dev/null ; }

agent_load_env

# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
            agent_start
                ssh-add
        elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
                    ssh-add
fi

unset env
```

## Ne pas oublier

### S'assurer que l'agent est actif (le dictionnaire de clefs)

```bash
eval "$(ssh-agent -s)"
```

### Ajouter sa clef au dictionnaire

```bash
# id_rsa == votre clef privée
ssh-add ~/.ssh/id_rsa
```

### Tester si ça marche

```bash
ssh -T git@github.com
```
modification 