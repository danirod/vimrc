command Tig FloatermNew tig
command Lazygit FloatermNew lazygit

nmap <Leader>tig :Tig<CR>
nmap <Leader>lazy :Lazygit<CR>

nnoremap <silent> <F10> :FloatermToggle<CR>
tnoremap <silent> <F10> <C-\><C-n>:FloatermToggle<CR>
