# macrice - a macOS dotfile manager
![torpdots.gif](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpdots.gif)

## Overview

Macrice is a CLI designed to make configuring UNIX computers easy.

Macrice is a dotfile manager. `macrice` easily configures dotfiles on macOS and Linux systems from the command line.

---

# Installation

To download Macrice with [homebrew](https://github.com/Homebrew/brew), run the following from the command line:

    brew tap griffinryan/macrice
    brew install macrice

---

# Usage

There are a few different features to Macrice. An easy way to start learning the Macrice magic is to simply run `macrice` in any shell.

    macrice

##### `macrice save`
The `save` function saves a backup of your dotfiles in your home directory at `/.macrice/` to restore later.

    macrice save

##### `macrice restore`
The `restore` function reverts the dotfiles in your home directory to the dotfiles stored at `/.macrice/` from using `macrice save`.

    macrice restore

##### `macrice backup`
The `backup` function creates a backup of your dotfiles in a new directory. Using `macrice backup` will ask the user for a title of the new folder in the current working directory.

    macrice backup

##### `macrice dot`
The `dot` function configures dotfiles for macOS. This includes configurations for the [fish](https://github.com/fish-shell/fish-shell) shell, the [iTerm2](https://github.com/gnachman/iTerm2) terminal, [git](https://github.com/git/git), [vim](https://github.com/vim/vim), and *much* more!

`macrice save` is always used with `macrice dot`. Before using `dot`, dotfiles are automatically backed up in the home directory at `/.macrice/`.

    macrice dot

##### `macrice iterm`
The `iterm` function installs a set of very neat-looking color themes for the [iTerm2](https://github.com/gnachman/iTerm2) shell.

    macrice iterm

##### `macrice apple`
The `apple` function is an automated way of changing macOS System Preferences and other configurations. Be careful when using `apple` as some changes are a little tricky to reverse!

    macrice apple

---

# Notes
Macrice can make a lot of changes to your macOS system that can be a slightly challenging to revert! *Always* use `macrice backup` or `macrice save` before making changes to your system.

Thank you for using Macrice!

### Go see my portfolio!
[https://griffinryan.com/](https://griffinryan.com/)

Software by Griffin Ryan, 2022.
