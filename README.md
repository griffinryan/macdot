# Macdot - a macOS dotfile manager
![main.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/main.gif)

## Overview

Macdot is a CLI designed to make configuring UNIX computers easy.

Macdot is a dotfile manager. `macdot` easily configures dotfiles on macOS and Linux systems from the command line.

---

## Installation

To download Macdot with [homebrew](https://github.com/Homebrew/brew), run the following from the command line:

    brew tap griffinryan/macdot
    brew install macdot

---

## Usage

There are a few different features to Macdot. An easy way to start learning the Macdot magic is to simply run `macdot` in any shell.

    macdot

![main.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/main.gif)

---

#### `macdot save`

The `save` function saves a backup of your dotfiles in your home directory at `/.Macdot/` to restore later.

    macdot save

![save.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/save.gif)

---

#### `macdot restore`

The `restore` function reverts the dotfiles in your home directory to the dotfiles stored at `/.Macdot/` from using `macdot save`.

    macdot restore

![restore.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/restore.gif)

---

#### `macdot backup`

The `backup` function creates a backup of your dotfiles in a new directory. Using `macdot backup` will ask the user for a title of the new folder in the current working directory.

    macdot backup

![backup.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/backup.gif)

---

#### `macdot dot`

The `dot` function configures dotfiles for macOS. This includes configurations for the [fish](https://github.com/fish-shell/fish-shell) shell, the [iTerm2](https://github.com/gnachman/iTerm2) terminal, [git](https://github.com/git/git), [vim](https://github.com/vim/vim), and *much* more!

    macdot dot

![dot.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/dot.gif)

`macdot save` is always used with `macdot dot`. Before using `dot`, dotfiles are automatically backed up in the home directory at `/.Macdot/`.

---

#### `macdot help`

The `help` function displays _much_ more!

    macdot help

Thanks for using Macdot!

![main.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/main.gif)

---

## Notes

Macdot can make a lot of changes to your macOS system that can be a slightly challenging to revert! *Always* use `macdot backup` or `macdot save` before making changes to your system.

Thank you for using Macdot!

### Go see my portfolio!
[https://griffinryan.com/](https://griffinryan.com/)

Software by Griffin Ryan, 2022.
