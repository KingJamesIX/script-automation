#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <repository-name> <token>"
  exit 1
fi

REPO_NAME=$1
TOKEN=$2
REPO_DIR="$REPO_NAME"

cd $REPO_DIR || { echo "Directory $REPO_DIR does not exist."; exit 1; }
git pull https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git
echo "Changes pulled from remote repository"
