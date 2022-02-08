#!/bin/bash
if [ $1 != "" ]; then
    opt=$1
else
  opt=""
fi

git status &>TEMP
status="$(cat TEMP)"

 # ddd
if [ "$(echo $status | grep "fatal")" != "" ]; then
    echo "Not GitHub Directory"
else
  if [ $opt == "" ]; then
    if [ "$(git status | grep "Untracked" )" != "" ]; then
        git add .
    fi
    if [ "$(git status | grep "Changes to be committed" )" != "" ]; then
      git commit --quiet -m "Automatic Commit"
    fi
    if [ "$(git status | grep "branch is ahead of" )" != "" ]; then
          git push --quiet
    fi
  else
    if [ $opt == "a" ]; then
        echo "Adding to project"
        git add .
    fi
    if [ $opt == "c" ]; then
        if [ $2 != "" ]; then
            git commit -m $2
        else
          git commit -m "auto commit"
        fi
    fi
    if [ $opt == "p" ]; then
        git push
    fi
  fi
fi
