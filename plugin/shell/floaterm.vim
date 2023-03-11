command Tig FloatermNew --width=0.8 --height=0.8 tig
command Lazygit FloatermNew --width=0.9 --height=0.9 lazygit

nmap <Leader>tig :Tig<CR>
nmap <Leader>lazy :Lazygit<CR>

nnoremap <silent> <F10> :FloatermToggle<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermToggle<CR>
