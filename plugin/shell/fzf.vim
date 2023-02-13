nmap <Leader>, :Files<CR>
nmap <Leader>; :Buffers<CR>

" Enable search capabilities if possible
if executable('rg')
    nnoremap <C-T> :Rg<Space>
elseif executable('ag')
    nnoremap <C-T> :Ag<Space>
end

" Settings
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" It doesn't read the env vars?
" let $BAT_THEME="ansi"

if empty($TMUX)
    " We are not inside tmux
    let g:fzf_layout = {'window': { 'width': 0.7, 'height': 0.6, 'yoffset': 0.2 } }
    let g:fzf_preview_window = 'right:40%'
else
    "We are inside tmux, let's leverage it!
    let g:fzf_layout = {'tmux': '-p70%,60%'}
end
