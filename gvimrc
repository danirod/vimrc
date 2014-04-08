" gvimrc: settings exclusive to GVim

" Resize a window to a given size, using only one command instead of two.
function! ResizeWindow(width, height)
    let &columns=a:width
    let &lines=a:height
endfunction

" Some handy shortcuts for common window sizes.
command ResSmall call ResizeWindow(80, 25)
command ResNorm call ResizeWindow(100, 30)
command ResBig call ResizeWindow(140, 35)
ResNorm " initial window size

" Modify the way gvim works:
set guioptions-=T   " disable toolbar
"set guioptions-=r  " uncomment to disable scrollbars.

" Set font.
if has("win32")
    " Win32 uses Fixedsys by default... UGLY! Use Consolas
    " Consolas is only shipped by default on Windows Vista+.
    " Who cares; Windows XP support has finished anyway.
    " This script is NOT compatible with Windows XP.
    " Unless you install Consolas font by your own, of course.
    set guifont=Consolas:h11
elseif has("gui_gtk2")
    " If using GTK2, use DejaVu Sans. This font is quite nice
    " and it's installed on almost any Linux distribution.
    set guifont=DejaVu\ Sans\ Mono\ 10
endif

" If using GVim, switch to Solarized Dark.
if has("gui_gtk2")
    set background=dark
    colorscheme solarized
endif
