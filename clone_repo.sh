#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <repository-name> <token>"
  exit 1
fi

REPO_NAME=$1
TOKEN=$2
REPO_URL="https://github.com/KingJamesIX/$REPO_NAME.git"
CLONE_DIR="$REPO_NAME"

git clone https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git $CLONE_DIR
echo "Repository cloned to $CLONE_DIR"
