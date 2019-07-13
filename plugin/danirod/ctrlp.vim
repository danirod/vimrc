" CtrlP
let g:ctrlp_map = '<Leader>,'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

nmap <Leader>; :CtrlPBuffer<CR>
