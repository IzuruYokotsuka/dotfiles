#!/bin/bash

VS_FILES=(keybinding.json )
VSCODE_DIR=~/Library/Application\ Support/Code\ -\ Insiders/User

for file in ${VS_FILES[@]}
do
  if [ -e $(dirname ${VSCODE_DIR})/$file ]; then
    rm $(dirname ${VSCODE_DIR})/$file
  fi
  ln -s $HOME/dotfiles/vscode/$file $(dirname ${VSCODE_DIR})/$file
done
