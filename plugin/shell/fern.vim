scriptencoding utf-8

" It is important to me that every mapping from NERDTree continues to work.
" nt = open nerdtree, nf = open nerdtree focusing on the current buffer
nmap <Leader>nt :Fern . -drawer -width=30 -toggle<CR>
nmap <Leader>nf :Fern . -drawer -width=30 -toggle -reveal=%<CR>

" Making my own mappings so that it inherits behaviours from NERDTree.
let g:fern#disable_default_mappings = 1

function! s:init_fern() abort
    " fern#smart#leaf allows to do something different depending on whether
    " it is a file or a folder. open will be on files, expand or collapse
    " will be on folders.
    nmap <buffer><expr>
    \ <Plug>(fern-my-expand-or-collapse)
    \ fern#smart#leaf(
    \   "\<Plug>(fern-action-open)",
    \   "\<Plug>(fern-action-expand)",
    \   "\<Plug>(fern-action-collapse)",
    \ )

    nmap <buffer> q :<C-u>quit<CR>
    nmap <buffer> I <Plug>(fern-action-hidden:toggle)
    nmap <buffer> o <Plug>(fern-my-expand-or-collapse)
    nmap <buffer> <CR> <Plug>(fern-my-expand-or-collapse)
    nmap <buffer> O <Plug>(fern-action-collapse)
    nmap <buffer> R <Plug>(fern-action-reload)
    nmap <buffer> m <Plug>(fern-action-choice)
    nmap <buffer> i <Plug>(fern-action-open:vsplit)
    nmap <buffer> s <Plug>(fern-action-open:split)
    nmap <buffer> z <Plug>(fern-action-zoom)
    nmap <buffer> A <Plug>(fern-action-zoom:reset)
endfunction

augroup fern
    autocmd! *
    autocmd FileType fern setlocal norelativenumber
    autocmd FileType fern setlocal nonumber
    autocmd FileType fern call s:init_fern()
augroup END

" Light appearance
let g:fern#renderer#default#collapsed_symbol = '▷ '
let g:fern#renderer#default#expanded_symbol  = '▼ '
let g:fern#renderer#default#leading          = ' '
let g:fern#renderer#default#leaf_symbol      = '  '
let g:fern#renderer#default#root_symbol      = '~ '
