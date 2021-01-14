setlocal sw=2 sts=2 nonumber norelativenumber nocursorline
call deoplete#custom#buffer_option('auto_complete', v:false)

" Disable ALE unless saving
let ale_lint_on_text_changed = 'never'
let ale_lint_on_insert_leave = 0
let ale_lint_on_enter = 0

" Optimizations required if you plan on open Ruby files.
setglobal regexpengine=1
setglobal ttyfast
