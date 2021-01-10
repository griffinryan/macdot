# torpdots - a macOS tool

![torpdots.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpdots.gif)

## Overview

torpdots is a macOS tool designed to make configuring a macOS computer a breeze.

Currently, this tool supports Homebrew automation, Applescript profiling, dotfile configuration, and more.

torpdots is built for the pragmatic programmers who need macOS to feel more like a UNIX beast!

## Installation

To download torpdots, run the following in any shell.

    git clone https://github.com/torpoise/torpdots.git

Make sure to be in the `torpdots/` directory before installing! To do so, use `cd` to move to the newly cloned repository.

    cd torpdots/

In simple fashion, the `install` UNIX executable will install torpdots to your macOS system. Merely run the following in any shell to finish the install process.

    ./install

That is all there is to installing torpdots! Now you are ready to `torpdots` your way to a sensible Apple computer for the maestro hacker!

## Usage

There are a few different features to torpdots. An easy way to start learning the torpdots magic is to simply run `torpdots` in any shell.

    torpdots

For `help` on torpdots features, run the following command.

    torpdots help

The `list` function is to provide a list of supported Homebrew formulae and casks.

    torpdots list

The `install-homebrew` function is to make Homebrew installation even easier. That means no more heading to [brew.sh](brew.sh) to look up that long, nasty `curl` call!

    torpdots install-homebrew

The `formula` function provides an automatic installation of all torpdots-supported Homebrew formulae.

    torpdots formula

Similarly, the `cask` function provides an automatic installation of all torpdots-supported Homebrew casks.

    torpdots cask

The `apple` function is an automated way of changing macOS System Preferences and other configurations. Be careful when using `apple` as some changes are a little tricky to reverse!

    torpdots apple

Finally, `dot` configures dotfiles for inspired coder. This includes configurations for the bash shell, the [iTerm2](https://iterm2.com/) terminal, `git`, `vim`, and much more!

    torpdots dot

This tool will recieve the occasional update. Use `update` to get the latest build effortlessly.

    torpdots update

Be careful hackers! torpdots can make a lot of changes to your macOS system that can be a slightly challenging to revert! This is an early access build, but there are plans to add both `backup` and `restore` functions in the future.

Thank you for using torpdots!

### Go see the Torpoise webpage

[https://torpoise.com/](https://torpoise.com/)

![Torpoise Logo.png](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpoiselogo.png)

Software by Griffin Ryan, 2021.
