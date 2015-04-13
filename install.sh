#!/bin/sh
# vimrc install script

# pring a color message.
colormsg() { tput setaf $1; echo $2; tput sgr0; }

colormsg 2 "Geting vundle..."
git submodule update --init

colormsg 2 "Symlinking vim..."
ln -s $PWD/vimrc ~/.vimrc
ln -s $PWD/gvimrc ~/.gvimrc

colormsg 2 "Fetching vundles..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

colormsg 2 "Enjoy."
