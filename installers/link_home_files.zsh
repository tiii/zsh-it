#! /usr/local/bin/zsh

source ./installers/setup 1> /dev/null

setopt EXTENDED_GLOB
for file in "${ZDOTDIR:-$HOME}"/home/.*; do
  echo -n "Linking ${file:t}: " 
  ln -fs "$file" "$HOME/${file:t}"
  SUCCESS=$?
  if [[ $SUCCESS == 0 ]]; then
    echo "...done."
  else
    echo "...failed."
  fi
done