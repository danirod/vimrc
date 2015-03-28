" danirod's gvimrc settings
" Specific settings for graphical clients such as gVim or MacVim
" Author and maintainer: Dani Rodríguez <danirod@outlook.com>
" Get info and fork at: http://github.com/danirod/vimrc
"                       http://bitbucket.org/danirod/vimrc (mirror)
"
" LICENSE:
" You are free to read and study this bundle or snippets of it and to use
" it on your own vimrc settings. Feel free to tweak and adapt my vimrc to
" suit your needs and to make the changes yours. Attribution to this vimrc
" is not required although is thanked.

" Disable toolbar
set guioptions-=T

" Set font. It depends on which operating system I'm using.
if has("win32") || has("win64")
    " Windows: Hands down for Consolas. It's a nice looking font and it
    " supports Unicode, which Fixedsys (default gVim font) doesn't.
    set guifont=Consolas:h11
elseif has("gui_gtk2")
    " Linux: Ubuntu Mono looks nice. Fallback to DejaVu Sans Mono in
    " case the system doesn't have it installed. Some mainstream distros
    " now ship with Droid Sans Mono, but that font is stupid since it
    " lacks bold.
    set guifont=Ubuntu\ Mono\ 13,DejaVu\ Sans\ Mono\ 10
elseif has("gui_macvim")
    set linespace=1
    set guifont=Menlo:h16
endif
