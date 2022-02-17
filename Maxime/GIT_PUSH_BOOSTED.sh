#!/bin/bash
if [ "$1" != "" ]; then
    opt=$1
else
  opt=""
fi
# not staged for commit
git status &>TEMP
status="$(cat TEMP)"
rm TEMP
if [ "$(echo "$status" | grep 'fatal')" != "" ]; then
    echo "Not GitHub Directory"
else
  if [ "$opt" == "" ]; then
    if [ "$(git status | grep 'Untracked' )" != "" ] || [ "$(git status | grep 'not staged for commit' )" != "" ]; then
      git add .
    fi
    if [ "$(git status | grep 'to be committed' )" != "" ]; then
        git commit -q -m "Auto commit"
    fi
    if [ "$(git status | grep 'Your branch is ahead' )" != "" ]; then
      git push -q
    fi
    if [ "$opt" == "a" ]; then
            git add .
    fi
    if [ "$opt" == "c" ]; then
        if [ "$2" != "" ]; then
            git commit -m $2
        else
          git commit -m "auto commit"
        fi
    fi
    if [ "$opt" == "p" ]; then
        git push
    fi
  fi
fi
