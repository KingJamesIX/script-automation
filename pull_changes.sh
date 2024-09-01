#!/bin/bash

# Script to pull changes from a GitHub repository using a PAT

# Check if the repository name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repository-name>"
  exit 1
fi

# Variables
REPO_NAME=$1
REPO_DIR="$REPO_NAME"
TOKEN="REDACTED"

# Navigate to the repository directory
cd $REPO_DIR || { echo "Directory $REPO_DIR does not exist."; exit 1; }

# Pull the latest changes
git pull https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git

echo "Changes pulled from remote repository"

