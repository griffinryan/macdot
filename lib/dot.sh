#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

# dotfile management script
NC='\033[0m'               # No Color
LIGHTBLUE='\033[1;34m'     # Light Blue
LIGHTYELLOW='\033[1;33m'   # Light Yellow
LIGHTPURPLE='\033[1;35m'   # Light Purple
LIGHTRED='\033[1;31m'      # Light Red

function dotfileInstall() {
    
    # wildcard * to add all parent files.
    /bin/cp /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.* ~/ 2>/dev/null
    # individually add parent directories.
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.vim ~/.vim
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.local ~/.local
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.config ~/.config
    /bin/cp -r /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.iterm ~/.iterm
    # copy iTerm2 settings
    /bin/cp /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
    
    
    #fish
    #fish_add_path /opt/homebrew/bin
    #echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
    #chsh -s /opt/homebrew/bin/fish
    #bash
}

toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
echo -e "    Now installing all ${LIGHTPURPLE}macrice${NC} dotfiles to home directory..."

# Install dotfiles to ~/.* from /usr/local/share/torpdots/dotfiles/.*
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    # force dotfileInstall() with -f argument
    dotfileInstall
    echo -e "    ${LIGHTPURPLE}macrice${NC} ${YELLOW}dot${NC} has successfully installed all dotfiles!"
else
    read -p "    This will overwrite existing files in the home directory. Are you sure? (y/n) " -n 1
    echo;
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        dotfileInstall
        echo -e "    ${LIGHTPURPLE}macrice${NC} ${YELLOW}dot${NC} has successfully installed all dotfiles!"
    fi;
fi;
unset dotfileInstall
