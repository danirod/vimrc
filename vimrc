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
" 4. Specific filetype settings
" 5. Colors and UI
" 6. Maps and functions

" ===================
" 1. GENERIC SETTINGS
" ===================
set nocompatible " disable vi compatibility mode
set history=1000 " increase history size

" =================
" 2. VUNDLE PLUGINS
" =================
" Init Vundle
filetype off " required by Vundle.
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

" Vundleception. Vundle actually needs to manage Vundle.
Plugin 'gmarik/vundle.vim'

" Plug-ins
Plugin 'scrooloose/nerdtree'                    " NERDtree
Plugin 'tpope/vim-fugitive'                     " Fugitive
Plugin 'majutsushi/tagbar'                      " Tagbar
Plugin 'scrooloose/syntastic'                   " Syntastic

" Language support
Plugin 'parkr/vim-jekyll'                       " Jekyll
Plugin 'wlangstroth/vim-racket'                 " Racket
Plugin 'jQuery'                                 " jQuery
Plugin 'kchmck/vim-coffee-script'               " CoffeeScript
Plugin 'tfnico/vim-gradle'                      " Gradle

" Colorschemes
Plugin 'endel/vim-github-colorscheme'           " GitHub
Plugin 'altercation/vim-colors-solarized'       " Solarized
Plugin 'sickill/vim-monokai'                    " Monokai
Plugin 'benjaminwhite/Benokai'                  " Benokai
Plugin 'cschlueter/vim-wombat'                  " Wombat
Plugin 'chriskempson/vim-tomorrow-theme'        " Tomorrow

" Finish Vundle initialization
call vundle#end()
filetype plugin indent on " Restore filetype

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

" ================
" 5. COLORS AND UI
" ================
" Are we supporting colors?
if &t_Co > 2 || has("gui_running")
   syntax on
   set colorcolumn=80
endif

" Are we supporting a full color pallete?
if &t_Co >= 256 || has("gui_running")
    color solarized
    set background=dark
endif

set showmode            " always show which more are we in
set laststatus=2        " always show statusbar
set wildmenu            " enable visual wildmenu

set nowrap              " don't wrap long lines
set number              " show line numbers
set relativenumber      " show numbers as relative by default
set cursorline          " highlight line where the cursor is
set cursorcolumn        " highlight column where the cursor is
set showmatch           " higlight matching parentheses and brackets

" =====================
" 6. MAPS AND FUNCTIONS
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
nmap <F8> :TagbarToggle<CR> 
:let g:NERDTreeWinSize=20
:let g:tagbar_width=20

" Now, in order to easily swap between relative numbers and non-relative
" numbers, let's declare a function that does the job for us: it sets
" relativenumbers if it's OFF, it unsets it if it's ON.
function! ToggleRelativeNumber()
    if &relativenumber == 1
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunction

" Finally, to make toggling easier, I just have to map an unused key, such
" as F5. This mapping will work both in Normal and in Insert mode. By
" pressing this key, relative numbers are automatically toggled.
nmap <F5> :call ToggleRelativeNumber()<CR>
imap <F5> <Esc>:call ToggleRelativeNumber()<CR>a

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
