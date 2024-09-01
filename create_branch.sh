#!/bin/bash

# Script to create a new branch and switch to it using a PAT

# Check if the repository name and branch name were provided
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <repository-name> <branch-name>"
  exit 1
fi

# Variables
REPO_NAME=$1
NEW_BRANCH=$2
REPO_DIR="$REPO_NAME"
TOKEN="REDACTED"

# Navigate to the repository directory
cd $REPO_DIR || { echo "Directory $REPO_DIR does not exist."; exit 1; }

# Create a new branch and switch to it
git checkout -b $NEW_BRANCH

# Push the new branch to the remote repository
git push https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git $NEW_BRANCH

echo "New branch '$NEW_BRANCH' created and pushed to remote repository"

