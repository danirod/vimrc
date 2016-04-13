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
* **ViM 7.3**: My setup should work on Vim 7.3 since every plugin I use
  works on that version. I don't use YCM anymore since I have replaced it.
* **Git and Curl**: they are required by vim-plug for installing plugins.

### Quick set up

On Linux and MacOS you can run the following one liner:

```sh
curl -fL https://raw.githubusercontent.com/danirod/vimrc/master/install.sh | sh
```

On Windows PowerShell you can run the following three liner:

```powershell
iex ((New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/danirod/vimrc/install-script/instal.ps1'))
```

Should you trust these scripts? It is up to you. I somehow got to trust my
own scripts. If you just want to download and play with the setup and are
concerned about the security issues, please read the source code for
`install.sh` or `install.ps1` by yourself before running the commands or
run the install process manually.

### Manual set up

Download or clone the project and put it on `~/.vim` on Linux and Mac or on
`~\vimfiles` on Windows. To install the plugins, you will need to install
`vim-plug`. Instructions are present on [his README][vim-plug-readme].
To install the plugins, run `vim +PlugInstall +qall` after installing
vim-plug.

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

[vim-plug-readme]: https://github.com/junegunn/vim-plug#installation
[vim-plug]: https://github.com/junegunn/vim-plug
