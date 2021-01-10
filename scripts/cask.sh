#!/bin/bash

#   Install command-line tools using Homebrew, Torpoise style!
echo;
echo 'Now installing casks...       ' && echo;
brew install --cask xquartz
echo;
brew install --cask google-chrome
echo;
brew install --cask gimp
echo;
brew install --cask processing
echo;
brew install --cask iterm2
echo;
brew install --cask visual-studio-code
echo;
brew install --cask rectangle
echo;
brew install --cask zoom
echo;
brew cleanup
echo;
echo 'Thanks for using!     Enjoy the newly installed software!';
