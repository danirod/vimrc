# About

This my vimrc setup. Keeping your vim setup in a Git repository
is cool because you can track the changes you do to your set up,
you can rollback if something goes wrong, you can branch and
test new settings while keeping your base setup stable...

Also, pushing my vimrc to GitHub is nice because I have an
online backup. In case I format my PC or want to install vim into
a new computer, I just have to clone my repository and it's done.

There's another reason for pushing my vimrc setup online. You can
share your setup with everybody, let people learn from what you're
done. I like to browse other vimrc repos here at GitHub and learn
from their experience. I know my vimrc setup is tiny and modest but
I'm proud of it.

# Install

## Requirements

* **Linux / MacOS X**: installation is done as a shell script.
  I've only tested it on Linux, I believe it should work on MacOS X
  since it also has a terminal. It should work on **Windows** too
  if you get Bash for Windows; haven't tested it, though. There's
  __NO__ support for Windows's Command Prompt and it won't have.
* **vim 7.3 +**: it's my version, I've tested my setup against this
  version. I don't know if it'll work on older versions of vim.
  Vundle was also tested on vim 7.3.
* **Git**: required for cloning Vundle's submodule. Tested on Git 1.7.9.
* **Curl**: required by Vundle for cloning plugins.

Optionally you can also have **gvim** (vim-gtk) or **MacVim** if you want.

## Install

You can grab a [zipball](http://github.com/danirod/vimrc/archive/master.zip)
or a [tarball](http://github.com/danirod/vimrc/archive/master.tar.gz) if you
don't want to use Git; but I encourage you to use Git since it will allow
you to update the setup easier. If you don't use Git, you'll have to
manually download Vundle too.

To install this setup using Git just clone the repo into ~/.vim, then run
the installation script.


    git clone git://github.com/danirod/vimrc ~/.vim
    cd ~/.vim
    sh install.sh

Install script will automatically clone vundle, symlink vimrc to ~/.vimrc
and gvimrc to ~/.gvimrc and install all my plugins into Vundle. You can do
that manually if you want.

# About

My vimrc setup is powered by [Vundle](http://github.com/gmarik/Vundle.vim).
Vundle is an awesome plugin manager for Vim that takes care of automatically
installing plugins, so you don't haveto care about them. You just add them
to your vimrc file and Vundle can clone them.

I used to use Pathogen. It's also a nice solution; however it requires you
to manage manually your plugins, for instance, by submoduling all of them,
which is sometimes hard. If you want to use Pathogen, you can checkout
__pathogen__ branch. It may be outdated, though.

Some plugins I use:

* [vim-colors-solarized](http://github.com/altercation/vim-colors-solarized):
  solarized colorscheme. Really nice, uses 256 colors, looks nice on GVim
  and on Vim if your terminal supports 256 colors. It has two color schemes:
  dark and light.
* [vim-github-colorscheme](http://github.com/endel/vim-github-colorscheme):
  colorscheme that uses GitHub's syntax highlighting colorscheme.
* [scrooloose/nerdtree](http://github.com/scrooloose/nerdtree): tree viewer
  for Vim. You can open it by using a command and it helps you navigate
  through all your files.
* [wlangstroth/vim-racket](http://github.com/wlangstroth/vim-racket): add
  Racket support for Vim (syntax highlighting, .rkt extension, indenting...)
* [tpope/vim-fugitive](http://github.com/tpope/vim-fugitive): Git inside Vim.
  Simply awesome.

Please note that this list may be outdated. Refer to my vimrc file in
case you want to see the actual plugin list bundled in my setup.
