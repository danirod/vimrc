let g:ale_fix_on_save = 1

let g:ale_linters = {
	\ 'c': ['clang'],
	\ 'cpp': ['clang'],
	\ 'h': ['clang'],
	\ 'javascript': ['eslint'],
	\ 'python': ['pylint', 'flake8'],
	\ 'typescript': ['prettier'],
	\ 'ruby': ['rubocop'],
	\ 'rust': ['rustfmt'],
	\ 'vue': ['eslint', 'stylelint', 'vls'],
	\ 'vuejs': ['eslint', 'stylelint', 'vls'],
	\ }
let g:ale_fixers = {
	\ 'c': ['clang-format'],
	\ 'cpp': ['clang-format'],
	\ 'h': ['clang-format'],
	\ 'javascript': ['prettier', 'eslint'],
	\ 'python': ['black'],
	\ 'typescript': ['prettier', 'eslint', 'tslint'],
	\ 'ruby': ['rubocop'],
	\ 'rust': ['rustfmt'],
	\ 'vue': ['prettier'],
	\ 'vuejs': ['prettier'],
	\ }
