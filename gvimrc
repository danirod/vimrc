" danirod's gvimrc settings
" Specific settings for graphical clients such as gVim or MacVim
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Public backup: http://github.com/danirod/vimrc
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.

" Disable toolbar and scrollbars
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L

" Disable menubar (not on macOS, not tested, though)
if has("gui_gtk2") || has("win32") || has("win64")
    set guioptions-=m
end

" Was this recently added to GVim? I thought it only worked on MacVim.
set linespace=1

" Window dimensions
set lines=35
set columns=120

" Set font. It depends on which operating system I'm using.
set guifont=Menlo:h13

colorscheme default
set background=dark
