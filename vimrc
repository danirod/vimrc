" ------------------------------- "
" |    danirod's vimrc file     | "
" |  2013-2014 Dani Rodríguez   | "
" ------------------------------- "

" Pathogen is a nice plugin management tool for vim. It takes care of
" autoloading and managing my plugins so that I don't have to manually
" add them to my vimrc file. Instead, Pathogen will load them at runtime.
" Running install script is required.
filetype off                " pathogen needs filetype disabled.
call pathogen#infect()      " load our shit 
filetype plugin indent on   " reenable filetype settings again.

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

" Use github theme
colorscheme github

" nerdtree
command NT NERDTree
