#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

#   Install command-line tools using Homebrew, Torpoise style!
echo;
echo 'Now installing casks...       ' && echo;
brew install --cask google-chrome
brew install --cask gimp
brew install --cask processing
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask rectangle
brew install --cask zoom
open -a Rectangle.app
brew cleanup