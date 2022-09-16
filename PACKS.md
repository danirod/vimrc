I've decided that I shall have a rule: no plugin should be installed unless I can explain what it does. Otherwise it is too easy to forget about the purpose and then have a lot of unknown plugins messing around.

Therefore, here is a list of all the plugins that I am using, and definitions in my own words on what each one of the plugins installed do.

Packs are organized by concern.

* **coding**: related to programming itself.
  * [ale]: this is the linter and formatter, it quacks about lint errors, and when you save, it can format the code for you (nice).
  * [editorconfig-vim]: adds support for the EditorConfig file format to Vim, which is what I use to set language defaults.
  * [vim-polyglot]: extra language packs for otherwise unsupported languages
* **editor**: related to the text editor itself.
  * [pear-tree]: inserts brackets and parenthesis automatically
  * [supertab]: makes tab work in insert mode
  * [vim-closetag]: closes HTML tags as they are inserted
  * [vim-endwise]: it's like pear-tree but for more verbose structures like Ruby (begin-end), Elixir (do-end), C preprocessor (#if #endif)...
  * [vim-numbertoggle]: switches absolute to relative depending on inset mode
* **lsp**: the language server capabilities
  * [asyncomplete]: manages the completion menu asynchronouslly
  * [asyncomplete-lsp]: use vim-lsp as a data source for asyncomplete
  * [vim-lsp]: language server protocol
  * [vim-lsp-settings]: defaults for a lot of programming languages, makes managing LSPs a breeze
* **shell**: plugins for the core vim
  * [ack.vim]: this is a search engine, it uses ack by default but you can switch to ag or ripgrep depending on your needs.
  * [close-buffers.vim]: it closes buffers when I press CTRL-Q
  * [ctrlp]: classic and mighty file, buffer and tag explorer, opens on a side and doesn't take your current buffer away
  * [fern.vim]: replacement for nerdtree, works async, do not trust it a lot
  * [undotree]: interactively manage the undotree
  * [vim-gitgutter]: shows diff markers in the sidebar of the file for supported files
  * [vim-maximizer]: makes the window bigger or smaller depending on the toggle
  * [vimwiki]: a wiki system for vim

[ale]: https://github.com/w0rp/ale
[editorconfig-vim]: https://github.com/editorconfig/editorconfig-vim
[vim-polyglot]: https://github.com/sheerun/vim-polyglot
[pear-tree]: https://github.com/tmsvg/pear-tree
[supertab]: https://github.com/ervandew/supertab
[vim-closetag]: https://github.com/alvan/vim-closetag
[vim-endwise]: https://github.com/tpope/vim-endwise
[vim-numbertoggle]: https://github.com/jeffkreeftmeijer/vim-numbertoggle
[asyncomplete]: https://github.com/prabirshrestha/asyncomplete.vim
[asyncomplete-lsp]: https://github.com/prabirshrestha/asyncomplete-lsp.vim
[vim-lsp]: https://github.com/prabirshrestha/vim-lsp
[vim-lsp-settings]: https://github.com/mattn/vim-lsp-settings
[ack.vim]: https://github.com/mileszs/ack.vim
[close-buffers.vim]: https://github.com/Asheq/close-buffers.vim
[ctrlp]: https://github.com/ctrlpvim/ctrlp.vim
[fern.vim]: https://github.com/lambdalisue/fern.vim
[undotree]: https://github.com/mbbill/undotree.git
[vim-gitgutter]: https://github.com/airblade/vim-gitgutter
[vim-maximizer]: https://github.com/szw/vim-maximizer.git
[vimwiki]: https://github.com/vimwiki/vimwiki
