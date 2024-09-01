#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <repository-name> <branch-name> <token>"
  exit 1
fi

REPO_NAME=$1
NEW_BRANCH=$2
TOKEN=$3
REPO_DIR="$REPO_NAME"

cd $REPO_DIR || { echo "Directory $REPO_DIR does not exist."; exit 1; }
git checkout -b $NEW_BRANCH
git push https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git $NEW_BRANCH
echo "New branch '$NEW_BRANCH' created and pushed to remote repository"
