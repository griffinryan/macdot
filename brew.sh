#!/bin/bash

#   Install command-line tools using Homebrew, Torpoise style!

echo;echo
echo '		Welcome back!		Installing homebrew...'
echo;echo

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo
# Make sure we’re using the latest Homebrew.
brew update
# Upgrade any already-installed formulae.
brew upgrade
#   doctor that bash
brew doctor
echo
#		homebrew latest bash and set as default shell.
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
brew install bash
brew install bash-completion2
# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;
# Install `wget` with IRI support.
brew install wget --with-iri
# Install GnuPG to enable PGP-signing commits.
brew install gnupg
# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp
# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2
# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz
# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install gs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
echo
brew install openjdk
brew install python
brew install python@3.8
brew install node
echo
brew install toilet
brew install lolcat
brew install bastet
brew install httpie
brew install bat
brew install fzf
brew install vifm
brew install nvim

echo
echo 'Now installing casks...       '
echo
echo
brew cask install xquartz
echo
brew cask install google-chrome
echo
brew cask install gimp
echo
brew cask install processing
echo
brew cask install iterm2
echo
brew cask install visual-studio-code
echo
brew cask install rectangle
echo
echo
brew cleanup
echo;echo
echo 'Thanks for using!     Enjoy the newly installed software!'
echo
echo
open -a safari 'https://macports.org/install.php'
echo
