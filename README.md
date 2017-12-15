# This repository has been archived

**I moved to nvim and I merged my nvim settings into my general purpose
[dotfiles][dotfiles] repository. You can see [my nvim settings here][nvim]. My
nvim settings are based on the settings on this repository. However, some
settings that are nvim defaults have been removed, such as lastmode,
nocompatible... You can keep using this repository, but I don't plan on
updating it.**

## About

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

## Requirementsx

* An UNIX box running Linux, MacOS X or BSD.
* ViM 8.0, althought it may work with ViM 7.3 / 7.4.
* curl is required for installing vim-plug.
* git is required by vim-plug.

MS Windows used to be supported. I haven't used ViM on Windows for a long
time so I finally decided to remove Windows specific settings and .ps1 scripts
from my repository.

## Set up

This vimrc has been wired so that if vim-plug is not detected it will download
it and run a PlugInstall to get the plug-in distribution in case it hasn't been
installed yet.

## Plugins

My vimrc is powered at the moment by [vim-plug][vim-plug]. It is a nice
alternative to Vundle that I have found to be more simple yet powerful than
Vundle.

To see which plugins do I use, read the `vimrc` file. I used to describe here
my plugin setup, but since this list was almost always outdated, I don't do
it anymore.

## Disclaimer

This is MY vimrc setup and it is opinionated and made to work how I want.
Anyone can download and use my vimrc, but unless you and me are the same
person, you'll probably find things that you don't want. It is OK. Use this
vimrc as a starting point for making your own.

**Under no circumstances I am responsible for any kind of damage derived from
the use of this vimrc on your machine. If you lose files, if your Vim install
breaks, if something explodes. My vimrc comes with no warranties. Again;
you shouldn't play with my toys if you don't want to get hurt.** (This doesn't
mean my vimrc will hurt you, you know, but this is legal boilerplate to cover
my ass _in case_ something happens).

[dotfiles]: https://github.com/danirod/dotfiles
[nvim]: https://github.com/danirod/dotfiles/tree/master/nvim/.config/nvim
[vim-plug-readme]: https://github.com/junegunn/vim-plug#installation
[vim-plug]: https://github.com/junegunn/vim-plug
