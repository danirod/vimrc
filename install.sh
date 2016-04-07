#!/bin/sh
# vimrc install script

# Backup old setup (-f for overwriting old backups).
[ -e ~/.vimrc ] && (rm -rf ~/.vimrc.bak; mv ~/.vimrc ~/.vimrc.bak)
[ -e ~/.gvimrc ] && (rm -rf ~/.gvimrc.bak; mv ~/.gvimrc ~/.gvimrc.bak)
[ -e ~/.vim ] && (rm -rf ~/.vim.bak; mv ~/.vim ~/.vim.bak)

# Clone and install configuration.
git clone https://github.com/danirod/vimrc ~/.vim
echo 'Downloading vim-plug...'
curl -sfLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Set up symbolic links.
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc

# Execute install.
vim +PlugInstall +qall

