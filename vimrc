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

" Colorscheme configuration
if &t_Co > 2
	syntax on
	set background=dark
	set colorcolumn=80

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	highlight DiffAdd ctermfg=green cterm=bold
	highlight DiffDelete ctermfg=red cterm=bold
	highlight DiffChange ctermfg=yellow

	highlight Pmenu ctermbg=8 ctermfg=0
	highlight Pmenusel ctermbg=15 ctermfg=0

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

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
