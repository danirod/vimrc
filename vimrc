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
if has("win32") || has("win64")
    set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
    call vundle#begin('$USERPROFILE/vimfiles/bundle/')
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
end

" Vundleception. Vundle actually needs to manage Vundle.
Plugin 'gmarik/Vundle.vim'

" Plug-ins
Plugin 'scrooloose/nerdtree'                    " NERDtree
Plugin 'tpope/vim-fugitive'                     " Fugitive
Plugin 'majutsushi/tagbar'                      " Tagbar
Plugin 'Valloric/YouCompleteMe'                 " YouCompleteMe

" Language support
Plugin 'wlangstroth/vim-racket'                 " Racket
Plugin 'jQuery'                                 " jQuery
Plugin 'tfnico/vim-gradle'                      " Gradle

if has("win32") || has("win64")
    Plugin 'PProvost/vim-ps1'                   " PowerShell
end

" Colorschemes
Plugin 'brendonrapp/smyck-vim'                  " Smyck

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
    try
        color smyck
    catch /^Vim\%((\a\+)\)\=:E185/
    endtry
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
