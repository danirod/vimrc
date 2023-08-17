" danirod's public vimrc settings
" Author and maintainer: Dani Rodríguez <dani@danirod.es>
" Public backup at https://github.com/danirod/vimrc

" Stop acting like classic vi
set history=1000

" Settings about files
set encoding=utf-8
scriptencoding utf-8
filetype indent plugin on
set autoindent
set backspace=indent,eol,start
set hidden

" Settings for undofiles, swapfiles, other files
set undodir=~/.vim/undodir
set undofile
set noswapfile
set nobackup
set viminfofile=~/.vim/info

" Colorscheme configuration
if &t_Co > 2
	syntax on
	set background=dark

	highlight Pmenu ctermbg=blue ctermfg=white
	highlight PmenuSel ctermbg=blue ctermfg=white cterm=inverse

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

highlight ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/

set fillchars+=vert:\┊
set noshowmode
set laststatus=1
set wildmenu
set wildoptions=pum

set nowrap
set number
set showmatch

nmap <C-N> :bnext<CR>
nmap <C-P> :bprev<CR>

let mapleader=','

tnoremap <Esc><Esc> <C-\><C-n>
