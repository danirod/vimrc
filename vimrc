" danirod's vimrc settings
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Public backup: http://github.com/danirod/vimrc
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.

" TABLE OF CONTENTS:
" 1. Generic settings
" 2. Vim-Plug plugins
" 3. File settings
" 4. Specific filetype settings
" 5. Colors and UI
" 6. Maps and functions

" ===================
" 1. GENERIC SETTINGS
" ===================
set nocompatible " disable vi compatibility mode
set history=1000 " increase history size

" =================
" 2. VIM-PLUG PLUGINS
" =================
" Init vim-plug
if has("win32") || has("win64")
    call plug#begin('$USERPROFILE/vimfiles/plugged/')
else
    call plug#begin('~/.vim/plugged/')
end

" Plug-ins
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'majutsushi/tagbar'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ap/vim-buftabline'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" Language support
Plug 'wlangstroth/vim-racket'
Plug 'jQuery'
Plug 'tfnico/vim-gradle'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'alvan/vim-closetag'

if has("win32") || has("win64")
    Plug 'PProvost/vim-ps1'
end

" Colorschemes
Plug 'cschlueter/vim-wombat'

call plug#end()

" ================
" 3. FILE SETTINGS
" ================

" 70s are over and swap files are part of the past.
" If you need to backup something, use Git, for God's sake.
set noswapfile
set nobackup

" Modify indenting settings
set autoindent              " autoindent always ON.
set expandtab               " expand tabs
set shiftwidth=4            " spaces for autoindenting
set softtabstop=4           " remove a full pseudo-TAB when i press <BS>

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode

" =============================
" 4. SPECIFIC FILETYPE SETTINGS
" =============================
" WARNING: As soon as this section grows over one vertical screen, all
" the content here should be moved to ftplugin folder. I'm serious.

" HTML, CSS/SASS, JS and CoffeScript gets 2 space indenting.
autocmd FileType html,css,sass,scss,javascript,json,*.coffee
            \ setlocal shiftwidth=2 softtabstop=2

" Ruby and ERB files
autocmd FileType ruby,eruby setlocal shiftwidth=2 softtabstop=2
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb,*.xml.erb,*.xml"

" ================
" 5. COLORS AND UI
" ================
" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
   syntax on
   set colorcolumn=80
   silent! color wombat
endif

" Extra fancyness if full pallete is supported.
if &t_Co >= 256 || has("gui_running")
    set cursorline
    set cursorcolumn
    silent! color wombat256
endif

" Trailing spaces
if &t_Co > 2 || has("gui_running")
    " Because we have color, colourize them
    highlight ExtraWhitespace ctermbg=red guibg=red
    match ExtraWhitespace /\s\+$/
else
    " Fallback
    set listchars=trail:~
    set list
endif

set fillchars+=vert:\   " Remove unpleasant pipes from vertical splits
                        " Sauce on this: http://stackoverflow.com/a/9001540

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set showmatch           " higlight matching parentheses and brackets

" =====================
" 6. MAPS AND FUNCTIONS
" =====================
let mapleader=","

" Make window navigation less painful.
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move CtrlP to CtrlT (CtrlP is for buffers)
let g:ctrlp_map = '<C-t>'

" Working with buffers is cool.
set hidden
map <C-N>  :bnext<CR>
map <C-P>  :bprev<CR>
imap <C-N> <Esc>:bnext<CR>a
imap <C-P> <Esc>:bprev<CR>a

" NERDTree: map ,nt for toggling NERDTree. Faster than the old :NT command
" since I don't have to hold Shift whenever I want to display NERDTree.
nmap <Leader>nt :NERDTreeToggle<cr>
:let g:NERDTreeWinSize=20

" To make toggling easier, I just have to map an unused key, such
" as F5. This mapping will work both in Normal and in Insert mode. By
" pressing this key, relative numbers are automatically toggled.
nmap <F5> :set invrelativenumber<CR>
imap <F5> <ESC>:set invrelativenumber<CR>a
