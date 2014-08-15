" danirod's vimrc settings
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Get info and fork at: http://github.com/danirod/vimrc
"                       http://bitbucket.org/danirod/vimrc (mirror)
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.
"
" CHANGELOG:
" Only information about major and minor releases is provided. To checkout
" full version history including patches and bugfixes please see the complete
" release history at http://github.com/danirod/vimrc/releases.
"
" v1.2      2014-04-13
"           * Switch to Vundle for plugin management.
"           * Remove Git submodules and replace by Vundle Plugins.
"           * Lotsa plugins and colors (Solarized, Fugitive, NERDTree...)
"
" v1.1      2014-02-10
"           * Install Vundle for a fast and simple plugin management.
"           * Even more compatibility for using this vimrc on GVim.
"           * Add a colorscheme and set the default colorscheme.
"
" v1.0      2014-01-20
"           * Initial release as a brand new separate repository.
"           * Moar settings on a well documented file.
"
" v0.1      2013-08-26 (@ http://github.com/danirod/dotfiles - commit b3f77a6)
"           * Initial release to public as a file in my dotfile repository.

" TABLE OF CONTENTS:
" 1. Generic settings
" 2. Vundle plugins
" 3. File settings
" 4. Colors and UI
" 5. Maps and functions

" ===================
" 1. GENERIC SETTINGS
" ===================
set nocompatible " disable vi compatibility mode
set hidden " hide buffers instead of closing them
set history=1000 " increase history size

" =================
" 2. VUNDLE PLUGINS
" =================
" Init Vundle
filetype off " required by Vundle.
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Plug-ins
Plugin 'scrooloose/nerdtree' " A tree explorer plugin for vim.
Plugin 'tpope/vim-fugitive' " a Git wrapper so awesome it should be illegal.
Plugin 'parkr/vim-jekyll' " Jekyll support

" Language support
Plugin 'wlangstroth/vim-racket'                 " Racket
Plugin 'jQuery'                                 " jQuery

" Colorschemes
Plugin 'endel/vim-github-colorscheme'           " GitHub
Plugin 'altercation/vim-colors-solarized'       " Solarized
Plugin 'sickill/vim-monokai'                    " Monokai
Plugin 'benjaminwhite/Benokai'                  " Benokai
Plugin 'cschlueter/vim-wombat'                  " Wombat

" Finish Vundle initialization
call vundle#end()
filetype plugin indent on " Restore filetype

" ================
" 3. FILE SETTINGS
" ================
" 4 line space indenting
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

if has("win32")
    set encoding=utf-8
endif

" ================
" 4. COLORS AND UI
" ================
syntax on " force on if editor doesn't enable this by default
set number " show line numbers
set colorcolumn=80 " display a red band fixed at 80 characters right

" =====================
" 5. MAPS AND FUNCTIONS
" =====================
" NERDTree
command NT NERDTree
