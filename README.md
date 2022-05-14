# macrice - a macOS dotfile tool
![torpdots.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpdots.gif)

## Overview

`macrice` is a macOS tool designed to make configuring a macOS computer a breeze.

## Installation

To download macrice, run the following in a shell:

    brew tap griffinryan/macrice
    brew install macrice

## Usage

There are a few different features to macrice. An easy way to start learning the macrice magic is to simply run `macrice` in any shell.

    macrice

The `save` function creates a backup of your dotfiles in your home directory at `/.macrice/` to restore later.

    macrice save

The `iterm` function installs a set of very neat-looking color themes for the [iTerm2](https://iterm2.com/) shell.

    macrice iterm

The `dot` function configures dotfiles for macOS. This includes configurations for the bash shell, fish shell, the [iTerm2](https://iterm2.com/) terminal, `git`, `vim`, and much more!

Use of `macrice dot` invokes `macrice save` so your dotfiles are automatically backed up in the home directory at `/.macrice/`

    macrice dot

The `apple` function is an automated way of changing macOS System Preferences and other configurations. Be careful when using `apple` as some changes are a little tricky to reverse!

    macrice apple

The `kegs` function is an automated [homebrew](https://github.com/Homebrew/brew) routine to install some popular formulae I use regularly for development.

    macrice kegs

Macrice can make a lot of changes to your macOS system that can be a slightly challenging to revert! Always use the `macrice save` command to be able to restore your system manually.

Thank you for using Macrice!

### Go see my portfolio!
[https://griffinryan.com/](https://griffinryan.com/)

Software by Griffin Ryan, 2022.
