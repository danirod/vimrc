" danirod's vimrc settings
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Get info and fork at: http://github.com/danirod/vimrc
"                       http://bitbucket.org/danirod/vimrc (mirror)
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.
"
" CHANGELOG:
" Only information about major and minor releases is provided. To checkout
" full version history including patches and bugfixes please see the complete
" release history at http://github.com/danirod/vimrc/releases.
"
" v1.2      2014-04-13
"           * Switch to Vundle for plugin management.
"           * Remove Git submodules and replace by Vundle Plugins.
"           * Lotsa plugins and colors (Solarized, Fugitive, NERDTree...)
"
" v1.1      2014-02-10
"           * Install Vundle for a fast and simple plugin management.
"           * Even more compatibility for using this vimrc on GVim.
"           * Add a colorscheme and set the default colorscheme.
"
" v1.0      2014-01-20
"           * Initial release as a brand new separate repository.
"           * Moar settings on a well documented file.
"
" v0.1      2013-08-26 (@ http://github.com/danirod/dotfiles - commit b3f77a6)
"           * Initial release to public as a file in my dotfile repository.

" TABLE OF CONTENTS:
" 1. Generic settings
" 2. Vundle plugins
" 3. File settings
" 4. Colors and UI
" 5. Maps and functions

" ===================
" 1. GENERIC SETTINGS
" ===================
set nocompatible " disable vi compatibility mode
set hidden " hide buffers instead of closing them
set history=1000 " increase history size

" =================
" 2. VUNDLE PLUGINS
" =================
" Init Vundle
filetype off " required by Vundle.
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

" Vundleception. Vundle actually needs to manage Vundle.
Plugin 'gmarik/vundle.vim'

" Plug-ins
Plugin 'scrooloose/nerdtree' " A tree explorer plugin for vim.
Plugin 'tpope/vim-fugitive' " a Git wrapper so awesome it should be illegal.
Plugin 'parkr/vim-jekyll' " Jekyll support
Plugin 'zoom.vim' " Zoom plugin

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

" ================
" 3. FILE SETTINGS
" ================

" As stated by thousands of people... we aren't in the 70s anymore.
" If you need to track the changes you do to your files, use Git.
set noswapfile              " disable swap
set nobackup                " disable backup

" Modify indenting settings
set autoindent              " autoindent always ON. 
set expandtab               " expand tabs
set shiftwidth=4            " spaces for autoindenting
set softtabstop=4           " remove a full pseudo-TAB when i press <BS>

" Modify some other settings about files
set encoding=utf-8          " always use unicode (god damnit, windows)
set backspace=indent,eol,start " backspace always works on insert mode

" ================
" 4. COLORS AND UI
" ================
" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
   syntax on

   " Show legcy color column at 80 characters.
   " TODO: Push the color column at 120 characters when Java is detected.
   "       (and maybe do the same with other languages such as C#?)
   set colorcolumn=80
endif

" Are we supporting a full color pallete?
if &t_Co >= 256 || has("gui_running")
    colorscheme wombat  " trends change, you know ^_^
endif

set showmode            " always show which more are we in
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set cursorline          " highlight line where the cursor is
set showmatch           " higlight matching parentheses and brackets

set linespace=1         " slight linespacing

" =====================
" 5. MAPS AND FUNCTIONS
" =====================
let mapleader=","       " I GOTCHA, MAPLEADER ಠ_ಠ

" Make window navigation less painful.
" this one is taken from https://gist.github.com/JeffreyWay/6753834
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Better tabbing using <C-tab> (why didn't I think of this earlier?)
map <C-TAB> :tabn<CR>
map <C-S-TAB> :tabp<CR>

" NERDTree: map ,nt for toggling NERDTree. Faster than the old :NT command
" since I don't have to hold Shift whenever I want to display NERDTree.
command NT NERDTree     " Legacy. Classy. I didn't know the power of maps yet.
nmap <Leader>nt :NERDTreeToggle<cr>
