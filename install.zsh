#!/bin/zsh

if [[ ! -e ./config ]]; then
  echo "ERROR: Script needs to be run from inside the containing folder"
  exit 1
fi

echo "Loading Configuration..."
source ./config

echo "Loading shared functions..."
source ./installers/shared_functions

echo ""
source ./installers/homebrew
source ./installers/git
source ./installers/zsh
source ./installers/zprezto

echo "Installation complete!"