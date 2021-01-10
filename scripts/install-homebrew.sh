#!/bin/bash

#   Install command-line tools using Homebrew, Torpoise style!

echo;
echo '    Welcome back!		Installing homebrew...';
echo;

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
#   doctor dat bash
brew doctor
#   cleanup dat bash
brew cleanup
echo && echo '    Homebrew has been successfully installed!';