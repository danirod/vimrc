# Dani's vimrc distribution

## Just... why?

This repository acts as a backup for my vimrc setting files. As
a person who often switches Linux distros in my computers, any
easy and painless way to restore my configuration is thanked.

The repository is also a showcase of my current vim configuration.
If you know more about vim than me, which is probably the case
since I'm a noob at vim, you'll probably already know these
commands. Yet, I'm proud of them.

Pushing your vimrc is also some kind of fashion here at GitHub.
[Just take a look at the search]
(https://github.com/search?&q=vimrc&type=Repositories). Beautiful.

## Install

### Use Git!

Even though you can just grab a [zipball]
(http://github.com/danirod/vimrc/archive/master.zip) or a [tarball]
(https://github.com/danirod/vimrc/archive/master.tar.gz), I
encourage you to use Git to clone this repository. There are two
reasons to do this:

* It's easy to track updates done to this repository, since you
  only need to do a git fetch / git pull.
* Some plug-ins that are hosted in Git repositories, such as
  __pathogen__, which is hosted at GitHub, are staged as submodules,
  meaning that you'll actually need to clone them manually.
  As far as I know, submodules aren't included in zipballs or
  tarballs you download from GitHub, so you need to get them
  using Git. Some of them, such as __pathogen__, are required to
  actually use this bundle, so you'll have a bad time if you don't
  get them too.
  
### How to install

Clone this repository to a folder named .vim. Then, grab all
the submodules this repository is connected to:

```
git clone http://github.com/danirod/vimrc ~/.vim
cd ~/.vim
git submodule update --init --recursive
```

## What's inside the bundle

* Some indent settings.
* Some useful configuration for developers such as line numbers.
* Settings for GVim, like window width or font.
* Compatibility settings for Windows users (UTF-8, ...)
* A nice colorscheme based on GitHub pallete. It's eye candy
  when used on GVim.

## Other notes

For compatibility issues it's a good idea to create symlinks to
vimrc and gvimrc as ~/.vimrc and ~/.gvimrc:

```
cd ~
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc
```


