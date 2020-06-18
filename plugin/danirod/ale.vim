let g:ale_fix_on_save = 1
let g:ale_linters = {
	\ 'c': ['clang'],
	\ 'javascript': ['eslint'],
	\ 'python': ['pylint', 'flake8'],
	\ 'typescript': ['prettier'],
	\ 'ruby': ['rubocop'],
	\ 'vue': ['eslint', 'stylelint', 'vls'],
	\ 'vuejs': ['eslint', 'stylelint', 'vls'],
	\ }
let g:ale_fixers = {
	\ 'c': ['clang-format'],
	\ 'javascript': ['prettier', 'eslint'],
	\ 'python': ['black'],
	\ 'typescript': ['prettier', 'eslint', 'tslint'],
	\ 'ruby': ['rubocop'],
	\ 'vue': ['prettier'],
	\ 'vuejs': ['prettier'],
	\ }
