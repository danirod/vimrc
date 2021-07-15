" Test for the valid directory pointing to LLVM
if isdirectory('/usr/local/opt/llvm')
	" Homebrew + macOS + LLVM-11
	let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/lib/clang/11.1.0/include/'
	let g:deoplete#sources#clang#libclang_path = '/usr/local/opt/llvm/lib/libclang.dylib'
elseif isdirectory('/usr/local/llvm12')
	" FreeBSD + LLVM-12
	let g:deoplete#sources#clang#clang_header = '/usr/local/llvm12/lib/clang/12.0.0/include/'
	let g:deoplete#sources#clang#libclang_path = '/usr/local/llvm12/lib/libclang.so'
endif

let g:deoplete#sources#clang#std = {'c': 'c89'}

