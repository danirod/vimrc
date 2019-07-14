let g:airline_powerline_fonts = 0
let g:airline_theme='atomic'
let g:airline#extensions#tabline#enabled = 1

function! AirlineInit()
	let g:airline_section_b = airline#section#create([])
	let g:airline_section_x = airline#section#create(['branch'])
	let g:airline_section_y = airline#section#create(['filetype'])
	let g:airline_section_z = airline#section#create(['%l:%c'])
endfunction
autocmd User AirlineAfterInit call AirlineInit()
