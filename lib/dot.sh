#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

# dotfile management script
NC='\033[0m'               # No Color
LIGHTBLUE='\033[1;34m'     # Light Blue
LIGHTYELLOW='\033[1;33m'   # Light Yellow
LIGHTPURPLE='\033[1;35m'   # Light Purple
LIGHTRED='\033[1;31m'      # Light Red

function dotfileInstall() {

    dotfileSave
    
    # wildcard * to add all parent files.
    /bin/cp /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.* ~/ 2>/dev/null

    # individually (and recursively) add parent directories.
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.vim ~/.vim
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.local ~/.local
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.config ~/.config
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.iterm ~/.iterm
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.fonts ~/.fonts

    # move iTerm2 .plist file to current shell.
    /bin/cp /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
    
    # make sure of Fish as default shell.
    chsh -s /opt/homebrew/bin/fish
}

function dotfileSave() {
    # make a new /.macrice/ folder.
    cd $HOME
    mkdir .macrice 2>/dev/null
    mkdir .macrice/.vim 2>/dev/null
    mkdir .macrice/.local 2>/dev/null
    mkdir .macrice/.config 2>/dev/null
    mkdir .macrice/.iterm 2>/dev/null
    mkdir .macrice/.fonts 2>/dev/null

    # individually (and recursively) add parent directories.
    /bin/cp -r ~/.vim ~/.macrice/.vim 2>/dev/null
    /bin/cp -r ~/.local ~/.macrice/.local 2>/dev/null
    /bin/cp -r ~/.config ~/.macrice/.config 2>/dev/null
    /bin/cp -r ~/.iterm ~/.macrice/.iterm 2>/dev/null
    /bin/cp -r ~/.fonts ~/.macrice/.fonts 2>/dev/null

    # wildcard * to add all parent files.
    /bin/cp ~/.* ~/.macrice/ 2>/dev/null
}

# Help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Status message.
echo "    Now installing all ${LIGHTPURPLE}macrice${NC} dotfiles to home directory..."

# Install dotfiles to ~/.* from /usr/local/share/torpdots/dotfiles/.*
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    # force dotfileInstall() with -f argument
    dotfileInstall
    # Status message.
    echo "    ${LIGHTPURPLE}macrice${NC} ${YELLOW}dot${NC} has ${LIGHTBLUE}successfully installed${NC} all dotfiles!"
else
    # Status message.
    read -p "    This will ${LIGHTRED}overwrite existing${NC} files in the home directory. ${LIGHTRED}Are you sure?${NC} (y/n) " -n 1
    echo;
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        dotfileInstall
        # Status message.
        echo "    ${LIGHTPURPLE}macrice${NC} ${YELLOW}dot${NC} has ${LIGHTBLUE}successfully installed${NC} all dotfiles!"
    fi;
fi;
unset dotfileInstall
