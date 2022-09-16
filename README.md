# danirod's vimrc

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

## Requirements

It is tested under the following conditions:

* It works on UNIX and UNIX-like (GNU/Linux, *BSD, macOS...)
* I mostly use Vim 9.0 nowadays but it should work on Vim 8.2.
* Git is required to fetch the submodules

I haven't used Vim on Windows for a while so I don't know if it works.

## Set up

Remember to pull the Git submodules.

* `git submodule init`: will initialize after clone.
* `git submodule update`: will clone the submodules.
* `git submodule update --remote`: willñ pull latest updates.

## Plugins

I use vim packs, which was added on Vim 8. As you can see, I am using
gitmodules to handle my plugins, which allows me to pin a specific
commit in case breaking changes happen.

The pack/ directory contains the plugins organized by concern. Inside
the start/ directory of each concern there are gitmodules.

The configuration for each pack is also stored separately in the plugin/
folder, which has a similar directory structure grouping each config file
by concern.

## Disclaimer

This is MY vimrc setup and it is opinionated and made to work how I
want.  Anyone can download and use my vimrc, but unless you and me are
the same person, you'll probably find things that you don't want. It is
OK. Use this vimrc as a starting point for making your own.

**Under no circumstances I am responsible for any kind of damage
derived from the use of this vimrc on your machine. If you lose files,
if your Vim install breaks, if something explodes. My vimrc comes with
no warranties. Again; you shouldn't play with my toys if you don't want
to get hurt.** (This doesn't mean my vimrc will hurt you, you know, but
this is legal boilerplate to cover my ass _in case_ something happens).

