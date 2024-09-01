#!/bin/bash

# Script to clone a GitHub repository using a PAT

# Check if the repository name was provided
if [ -z "$1" ]; then
  echo "Usage: $0 <repository-name>"
  exit 1
fi

# Variables
REPO_NAME=$1
REPO_URL="https://github.com/KingJamesIX/$REPO_NAME.git"
TOKEN="REDACTED"
CLONE_DIR="$REPO_NAME"

# Clone the repository
git clone https://$TOKEN@github.com/KingJamesIX/$REPO_NAME.git $CLONE_DIR

echo "Repository cloned to $CLONE_DIR"

