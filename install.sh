#!/bin/sh
# vimrc install script

# Backup old setup
[ -f ~/.vimrc ] && mv -f ~/.vimrc ~/.vimrc.bak
[ -f ~/.gvimrc ] && mv -f ~/.gvimrc ~/.gvimrc.bak

# Clone and install configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Setting up symlinks.
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Install configuration
vim +PlugInstall +qall

