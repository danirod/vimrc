let g:ackhighlight = 1
let g:ack_mappings = {
    \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
    \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }

" Set the default behaviour to not jump to the first result automatically.
nnoremap <C-T> :Ack!<Space>

" Use silversearcher if available.
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
end
