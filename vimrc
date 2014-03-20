" ------------------------------- "
" |    danirod's vimrc file     | "
" |  2013-2014 Dani Rodríguez   | "
" ------------------------------- "

" install vim-pathogen (requires submodule installed)
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

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

" Uncomment this to use github as default color scheme
"colorscheme github

set background=dark
colorscheme solarized
