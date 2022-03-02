" NERDtree
map <Leader>nt :NERDTreeToggle<CR>
map <Leader>nf :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=0
let NERDTreeWinSize=35
let NERDTreeCaseSensitiveSort=1
let NERDTreeWinPos = "right"

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
