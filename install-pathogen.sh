#!/bin/sh

# Install Pathogen script
# This script installs (and updates) Pathogen to the latest version
# available on its Git repository at http://github.com/tpope/vim-pathogen

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

