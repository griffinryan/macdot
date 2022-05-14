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

The `apple` function is an automated way of changing macOS System Preferences and other configurations. Be careful when using `apple` as some changes are a little tricky to reverse!

    macrice apple

The `iterm` function installs a set of very neat-looking color themes for the [iTerm2](https://iterm2.com/) shell.

    macrice iterm

Finally, `dot` configures dotfiles for the inspired coder. This includes configurations for the bash shell, the [iTerm2](https://iterm2.com/) terminal, `git`, `vim`, and much more!

    macrice dot

Be careful hackers! macrice can make a lot of changes to your macOS system that can be a slightly challenging to revert! This is an early access build, but there are plans to add both `backup` and `restore` functions in the future.

Thank you for using macrice!

### Go see my portfolio!

[https://griffinryan.com/](https://griffinryan.com/)

![Torpoise Logo.png](https://torpoisebucket.s3-us-west-2.amazonaws.com/torpoiselogo.png)

Software by Griffin Ryan, 2022.
