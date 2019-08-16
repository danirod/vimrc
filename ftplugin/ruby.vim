setlocal sw=2 sts=2 nonumber norelativenumber nocursorline
call deoplete#custom#buffer_option('auto_complete', v:false)

" Optimizations required if you plan on open Ruby files.
setglobal regexpengine=1
setglobal ttyfast
