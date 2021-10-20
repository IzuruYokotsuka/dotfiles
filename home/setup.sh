#!/bin/bash

DOT_FILES=(.zshrc .bashrc .bash_profile .vimrc .vimrc.dein .tmux.conf)

for file in ${DOT_FILES[@]}
do
  if [ -e $HOME/$file ]; then
    rm $HOME/$file
  fi
  ln -s $HOME/dotfiles/home/$file $HOME/$file
done
