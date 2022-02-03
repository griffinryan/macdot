# macrice - a macOS dotfile tool

![torpdots.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/macrice.gif)

## Overview

macrice is a macOS tool designed to make configuring a macOS computer a breeze.

*** M1 Macintosh computers currently unsupported ***

Currently, this tool supports Homebrew automation, Applescript profiling, dotfile configuration, and more.

macrice is built for the pragmatic programmers who need macOS to feel more like a UNIX beast!

## Installation

To download macrice, run the following in any shell.

    git clone https://github.com/torpoise/macrice.git

Make sure to be in the `macrice/` directory before installing! To do so, use `cd` to move to the newly cloned repository.

    cd macrice/

In simple fashion, the `install` UNIX executable will install macrice to your macOS system. Merely run the following in any shell to finish the install process.

    ./install

That is all there is to installing macrice! Now you are ready to `macrice` your way to a sensible Apple computer for the maestro hacker!

## Usage

There are a few different features to macrice. An easy way to start learning the macrice magic is to simply run `macrice` in any shell.

    macrice

For `help` on macrice features, run the following command.

    macrice help

The `list` function is to provide a list of supported Homebrew formulae and casks.

    macrice list

The `install-homebrew` function is to make Homebrew installation even easier. That means no more heading to [brew.sh](brew.sh) to look up that long, nasty `curl` call!

    macrice install-homebrew

The `formula` function provides an automatic installation of all macrice-supported Homebrew formulae.

    macrice formula

Similarly, the `cask` function provides an automatic installation of all macrice-supported Homebrew casks.

    macrice cask

The `apple` function is an automated way of changing macOS System Preferences and other configurations. Be careful when using `apple` as some changes are a little tricky to reverse!

    macrice apple

Finally, `dot` configures dotfiles for the inspired coder. This includes configurations for the bash shell, the [iTerm2](https://iterm2.com/) terminal, `git`, `vim`, and much more!

    macrice dot

This tool will recieve the occasional update. Use `update` to get the latest build effortlessly.

    macrice update

Be careful hackers! macrice can make a lot of changes to your macOS system that can be a slightly challenging to revert! This is an early access build, but there are plans to add both `backup` and `restore` functions in the future.

Thank you for using macrice!

### Go see my portfolio!

[https://griffinryan.com/](https://griffinryan.com/)

![Torpoise Logo.png](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpoiselogo.png)

Software by Griffin Ryan, 2022.
