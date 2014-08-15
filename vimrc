" ------------------------------- "
" |    danirod's vimrc file     | "
" |  2013-2014 Dani Rodríguez   | "
" ------------------------------- "

" Configure vundle and install bundles
set nocompatible " disable vi compatibility mode

" ==============
" Vundle plugins
" ==============
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

" 4 line space indenting
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4

" developer useful commands
syntax on " force on if editor doesn't enable this by default
set number " show line numbers
set colorcolumn=80 " display a red band fixed at 80 characters right

" freaking windows...
if has("win32")
    set encoding=utf-8
endif

" nerdtree
command NT NERDTree
