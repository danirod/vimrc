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

	highlight VertSplit cterm=NONE
	highlight Pmenu ctermbg=black ctermfg=white
	highlight PmenuSel ctermbg=black ctermfg=white cterm=inverse
	highlight StatusLine cterm=bold ctermbg=blue ctermfg=yellow
	highlight ExtraWhitespace ctermbg=1

	augroup colorscheme_changed
		autocmd!
		autocmd ColorScheme * highlight ExtraWhitespace ctermbg=1
		autocmd ColorScheme * highlight Pmenu
	augroup end

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

match ExtraWhitespace /\s\+$/

set fillchars+=vert:\│
set ruler
set laststatus=2
set wildmenu
set wildoptions=pum

set foldlevelstart=999
nnoremap <tab> za

set nowrap
set showmatch

nmap <C-N> :bnext<CR>
nmap <C-P> :bprev<CR>

let mapleader=','

tnoremap <Esc><Esc> <C-\><C-n>
