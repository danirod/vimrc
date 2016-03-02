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

## Install

### Requirements

* **Linux, MacOS X or Windows**: On Linux and MacOS X it works out of the
  box. Windows support is experimental but it works as well. See below
  for Windows specific information.
* **ViM 7.3 / 7.4**: My setup is known to work under ViM 7.3. However, to
  make use of YouCompleteMe, ViM 7.4 is required as a requirement. If you
  cannot upgrade to ViM 7.4 yet, please disable YCM.
* **Git and Curl**: they are required to clone Vundle.vim and for installing
  plugins through PluginInstall.

### Install

Clone this repository on `~/.vim`, then run the install script.

    git clone git://github.com/danirod/vimrc ~/.vim
    cd ~/.vim
    sh install.sh

Please note that at the moment YouCompleteMe has extra dependencies that
have to be compiled manually. See
[YCM's README](https://github.com/Valloric/YouCompleteMe/blob/master/README.md)
for more information. You can disable YCM Plugin as well if you don't plan
on using it. I'm considering disabling it by default since, unless I'm on
my main development machine, I don't use it and it takes a while to get it
working.

### Windows Install

I finally gave ViM for Windows a try and now it works on Windows too. ViM
for Windows uses a different path for vimrc given Windows limitations:
`~/.vim` becomes `~/vimfiles`; `~/.vimrc` becomes `~/_vimrc` and 
`~/.gvimrc` becomes `~/_gvimrc`.

Install Git and Curl. They must be loaded in your PATH because Vundle needs
them to install the plugins. Then, execute the following commands for
cloning and installing Vim and Vundle.

    > git clone git://github.com/danirod/vimrc %USERPROFILE%/vimfiles
    > cd %USERPROFILE%/vimfiles
    > git submodule update --init

If ViM is on your PATH, you can install plugins automatically using:

    > vim +PluginInstall +qall

Otherwise, open ViM and manually execute `:PluginInstall` command to
install plugins and colorschemes.

## Plugins

My vimrc setup is powered by [Vundle](http://github.com/gmarik/Vundle.vim).
Vundle is an awesome plugin manager for Vim that takes care of automatically
installing plugins, so you don't haveto care about them. You just add them
to your vimrc file and Vundle can clone them.

Check out vimrc to get the plugins. I used to keep a list with the plugins
and a brief description about them, but since the list was almost always
outdated, it is not useful anymore.
