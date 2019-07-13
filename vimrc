" danirod's vimrc settings
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Public backup: http://github.com/danirod/vimrc
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.

" vim-plug is not installed
if empty(glob("~/.vim/autoload/plug.vim"))
    silent !curl -fLso ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
end

" Init vim-plug plugins
call plug#begin('~/.vim/plugged/')

" General purpose plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'mileszs/ack.vim'
Plug 'vimwiki/vimwiki'

" Language support
Plug 'sheerun/vim-polyglot'
Plug 'tfnico/vim-gradle'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'alvan/vim-closetag'
Plug 'racer-rust/vim-racer'
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'

call plug#end()

" Stop acting like classic vi
set nocompatible            " disable vi compatibility mode
set history=1000            " increase history size
set noswapfile              " don't create swapfiles
set nobackup                " don't backup, use git!

" Enable filetype
filetype indent plugin on

" Persist undo history between file editing sessions.
set undofile
set undodir=~/.vim/undodir

" Modify indenting settings
set autoindent              " autoindent always ON.

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode
set hidden

" Required for alvan/vim-closetag
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb,*.xml.erb,*.xml"

" Colorscheme configuration.
if &t_Co > 2
	syntax on
	silent! colorscheme dim
	set background=dark

	highlight Folded cterm=reverse ctermbg=0 ctermfg=8
	highlight VertSplit cterm=NONE ctermbg=NONE ctermfg=8
	highlight Conceal cterm=NONE ctermbg=NONE ctermfg=8

	set colorcolumn=80
endif

" Mark trailing spaces depending on whether we have a fancy terminal or not
if &t_Co > 2
	highlight ExtraWhitespace ctermbg=1
	match ExtraWhitespace /\s\+$/
else
	set listchars=trail:~
	set list
endif

" Use a specific pipe ch
set fillchars+=vert:\┊

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set showmatch           " higlight matching parentheses and brackets

let mapleader=","

" Ctrl-P remapping
let g:ctrlp_map = '<Leader>,'

" Relative numbering is pretty useful for motions (3g, 5k...). However I'd
" prefer to have a way for switching relative numbers with a single map.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a


" ack
nnoremap <C-T> :Ack!<Space>
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

" vimwiki
let g:vimwiki_list = [{'path': '~/.vimwiki/'}]
