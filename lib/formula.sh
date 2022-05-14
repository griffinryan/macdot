#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

# Help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Status message.
echo "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}kegs${NC}' is now installing ${LIGHTBLUE}new formulae${NC}...";



#		Homebrew latest bash and set as default shell.
brew install bash && \
echo $(brew --prefix)/bin/bash | sudo tee -a /etc/shells && \
chsh -s $(brew --prefix)/bin/bash
echo
# Save Homebrew’s installed location.
echo;echo
xcode-select --install
xcodebuild -license
echo
BREW_PREFIX=$(brew --prefix)
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash-completion2
# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;
# Install `wget` with IRI support.
brew install wget
# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install pv
brew install rename
brew install rlwrap
brew install tree
# More binaries and small CLI tools
echo
brew install openjdk
brew install python
brew install python@3.9
brew install node
echo
brew install toilet
brew install lolcat
brew install httpie
brew install bat
brew install fzf
brew install vifm
brew install nvim
echo
brew install fish
brew install exa
brew install coreutils
echo
brew cleanup

# Help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Status message.
echo "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}kegs${NC}' is now...     ${LIGHTBLUE}complete!${NC}";
echo "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}kegs${NC}' installed ${LIGHTBLUE}new homebrew formulae${NC}."