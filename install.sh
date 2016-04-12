#!/bin/sh
# vimrc install script

# Check that Git is actually present
if ! git --version >/dev/null 2>&1; then
    echo "You need to install Git to clone the vimrc repository."
    exit 1
fi

# Check that Curl is present too
if ! curl --version >/dev/null 2>&1; then
    echo "You need to install Curl to download vim-plug."
    exit 1
fi

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
if vim --version >/dev/null 2>&1; then
    vim +PlugInstall +qall
else
    echo "You don't have Vim installed at this moment."
    echo "Please, install it, then run:"
    echo "  vim +PlugInstall +qall"
fi

