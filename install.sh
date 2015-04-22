#! /bin/zsh

if [[ ! -e ./install.sh ]]; then
  echo "ERROR: Script needs to be run from inside the containing folder"
  exit 1
fi

if [[ ! -e ./config ]]; then
  echo "ERROR: missing config file."
  exit 1
fi


source ./installers/setup

echo "Setting up base:"
echo ""

source ./installers/base/homebrew
source ./installers/base/homebrew-cask
source ./installers/base/zsh

echo "Installing additions:"
echo ""

source ./installers/additions.zsh
echo ""

echo "Linking home files:"
echo ""

source ./installers/link_home_files.zsh
echo ""

echo "Installation complete!"