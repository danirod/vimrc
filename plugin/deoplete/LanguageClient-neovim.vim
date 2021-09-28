let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'javascript.jsx': ['javascript-typescript-stdio'],
    \ 'css': ['css-languageserver', '--stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ 'rust': ['rls'],
    \ 'c': ['clangd']
    \ }

" clang
if isdirectory('/usr/local/llvm12')
	" FreeBSD + clang-12
	let g:LanguageClient_serverCommands['c'] = ['clangd12']
endif
