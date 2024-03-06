" danirod's public vimrc settings
" Author and maintainer: Dani Rodríguez <dani@danirod.es>
" Public backup at https://github.com/danirod/vimrc

" Stop acting like classic vi
set history=1000
set nocompatible

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

	highlight Pmenu ctermbg=black ctermfg=white
	highlight PmenuSel ctermbg=black ctermfg=white cterm=reverse
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=white gui=NONE guibg=NONE guifg=white
	highlight StatusLine cterm=underline ctermfg=yellow ctermbg=darkblue gui=underline guifg=yellow guibg=darkblue
	highlight StatusLineNC cterm=NONE ctermfg=gray ctermbg=darkblue gui=NONE guifg=gray guibg=darkblue

	" Syntax often gets messed up on files with multiple languages
	noremap <F12> <Esc>:syntax sync fromstart<CR>
	inoremap <F12> <C-o>:syntax sync fromstart<CR>
endif

if &t_Co > 16
	highlight Pmenu ctermbg=233 ctermfg=white
	highlight PmenuSel ctermbg=19 ctermfg=white cterm=NONE
	highlight PmenuSbar ctermbg=239
	highlight PmenuThumb ctermbg=245
	highlight Signcolumn ctermbg=234
endif

highlight ExtraWhitespace ctermbg=1
match ExtraWhitespace /\s\+$/

set fillchars+=vert:\│
set ruler
set laststatus=1
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
