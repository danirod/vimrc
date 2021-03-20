" Test for the valid directory pointing to LLVM
if isdirectory('/usr/local/opt/llvm')
	" Homebrew + macOS + LLVM-11
	let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/lib/clang/11.1.0/include/'
	let g:deoplete#sources#clang#libclang_path = '/usr/local/opt/llvm/lib/libclang.dylib'
elseif isdirectory('/usr/local/llvm10')
	" FreeBSD + LLVM-10
	let g:deoplete#sources#clang#clang_header = '/usr/local/llvm10/lib/clang/10.0.1/include/'
	let g:deoplete#sources#clang#libclang_path = '/usr/local/llvm10/lib/libclang.so'
endif

let g:deoplete#sources#clang#std = {'c': 'c89'}

