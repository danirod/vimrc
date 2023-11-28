let g:ale_fix_on_save = 1

let g:ale_linters = {
	\ 'c': ['clang'],
	\ 'cpp': ['clang'],
	\ 'go': ['gopls', 'gofmt'],
	\ 'h': ['clang'],
	\ 'javascript': ['eslint'],
	\ 'python': ['pylint', 'flake8'],
	\ 'typescript': ['prettier'],
	\ 'ruby': ['rubocop'],
	\ 'rust': ['rustfmt'],
	\ 'vue': ['eslint', 'stylelint', 'vls'],
	\ 'vuejs': ['eslint', 'stylelint', 'vls'],
	\ 'svelte': ['eslint'],
	\ }
let g:ale_fixers = {
	\ 'c': ['clang-format'],
	\ 'cpp': ['clang-format'],
	\ 'go': ['gofmt', 'goimports'],
	\ 'h': ['clang-format'],
	\ 'javascript': ['prettier', 'eslint'],
	\ 'python': ['black'],
	\ 'typescript': ['prettier', 'eslint', 'tslint'],
	\ 'ruby': ['rubocop'],
	\ 'rust': ['rustfmt'],
	\ 'vue': ['prettier'],
	\ 'vuejs': ['prettier'],
	\ 'svelte': ['prettier'],
	\ }

if isdirectory('/usr/local/llvm12')
	let g:ale_c_clangd_executable = '/usr/local/bin/clang-format12'
	let g:ale_c_clangformat_executable = '/usr/local/bin/clang-format12'
endif
