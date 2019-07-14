" Toggle compatibility with remote plugins on Vim8

if !has("nvim")
	packadd! nvim-yarp
	packadd! vim-hug-neovim-rpc
end
