# danirod's vimrc

This is my vimrc, the configuration file for my Vim distribution.

It used to be a big deal for me some years ago, but nowadays my vimrc is
frugal and boring.

## Compatibility

This vimrc is used daily on UNIX and UNIX-like systems: GNU/Linux, BSD
and macOS. Compatibility with Windows is unknown.

I mostly use Vim 9.0 at the moment but there should be compatibility
with Vim 8.2, which is currently the version in the oldstable branch of
Debian.

It should work with Neovim, but I don't use Neovim, so it is unknown.

## Plugins

I don't use a package manager, I switched to vim-packs. After cloning,
submodules have to be initialized using `make fetch-packs` or
`gmake fetch-packs`. I organize the packs in the pack/ directory by
concern, although not a lot of plugins are in use nowadays so I might
just move them all to a single folder again.

The configuration for each plugin is in the plugin/ folder and it
mirrors the directory structure of the pack/ directory.

This is the list of plugins that I use:

- **pack/coding**: these packs are related to the programming
  experience.
  - [editorconfig-vim]: not just for the projects where I have an
    .editorconfig, I have a global .editorconfig file in my home
    directory to set the defaults for many languages among all my text
    editors. This is why you will not find `tabstop`, `shiftwidth`,
    `textwidth` and `softtabstop` settings in my vimrc.
  - [vim-polyglot]: it is the biggest plugin, but it is worth having it
    and being able to just open any kind of file no matter how obscure
    it is and be received by a colourful window, so it stays.
- **pack/lsp**: these packs are related to the Language Server Protocol.
  - [ale]: it is used for linting and formatting, something that vim-lsp
    doesn't usually handle very well.
  - [asyncomplete]: it is used to automatically unfold the popup menu as
    I am writing, to help me finish my words.
  - [asyncomplete-lsp]: this is the bridge to have asyncomplete read
    completions from vim-lsp.
  - [vim-lsp]: currently the LSP plugin I use, supports many features
    such as rename, go to implementation and such.
  - [vim-lsp-settings]: a repository of LSP configurations for many
    programming languages.
- **pack/shell**: these packs are related to extending Vim itself.
  - [fzf]: the fuzzy finder, includes the core plugin to add fzf to Vim.
  - [fzf-vim]: extends the fzf plugin, adding many commands such as
    Files or Buffers.
  - [nerdtree]: the classic tree explorer plugin. Mostly to create files
    and directories.

[ale]: https://github.com/dense-analysis/ale
[asyncomplete]: https://github.com/prabirshrestha/asyncomplete.vim
[asyncomplete-lsp]:
  https://github.com/prabirshrestha/asyncomplete-lsp.vim
[editorconfig-vim]: https://github.com/editorconfig/editorconfig-vim
[fzf]: https://github.com/junegunn/fzf
[fzf-vim]: https://github.com/junegunn/fzf.vim
[nerdtree]: https://github.com/preservim/nerdtree
[vim-lsp]: https://github.com/prabirshrestha/vim-lsp
[vim-lsp-settings]: https://github.com/mattn/vim-lsp-settings
[vim-polyglot]: https://github.com/sheerun/vim-polyglot

## Updating the packs

To update the packs, use `make update-packs` or `gmake update-packs`.

## Disclaimer

This is my vimrc and it is opinionated to reflect how I want to work.
You can download this vimrc, but you will probably find things that
don't work for you, and that's OK. You can read from them and then
change yours.

I am not responsible if downloading and using this vimrc deletes files,
makes you lose data or makes your computer blow up.

I am not responsible if at any point I git push something that breaks
changes.
