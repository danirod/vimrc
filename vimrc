" ------------------------------- "
" |    danirod's vimrc file     | "
" |  2013-2014 Dani Rodríguez   | "
" ------------------------------- "

" Configure vundle and install bundles
  set nocompatible " disable vi compatibility mode
  filetype off " required by vundle (?)
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
  filetype plugin indent on " re-enable plugin and indent
  syntax on " re-enable syntax mode

  Plugin 'endel/vim-github-colorscheme' " GitHub syntax color scheme.
  Plugin 'altercation/vim-colors-solarized' " Solarized color scheme.
  Plugin 'scrooloose/nerdtree' " A tree explorer plugin for vim.
  Plugin 'wlangstroth/vim-racket' " Add Racket language support for vim.
  Plugin 'tpope/vim-fugitive' " a Git wrapper so awesome it should be illegal.

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
