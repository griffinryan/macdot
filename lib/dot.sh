#!/bin/bash

# dotfile management script
NC='\033[0m'               # No Color
LIGHTBLUE='\033[1;34m'     # Light Blue
LIGHTYELLOW='\033[1;33m'   # Light Yellow
LIGHTPURPLE='\033[1;35m'   # Light Purple
LIGHTRED='\033[1;31m'      # Light Red

function dotfileInstall() {
    # cp -r /opt/homebrew/Cellar/macrice/**/bin/dotfiles/.* ~/
    sudo /bin/cp -rf /opt/homebrew/Cellar/macrice/**/bin/dotfiles/.* ~/
    # copy iTerm2 settings
    sudo /bin/cp /opt/homebrew/Cellar/macrice/**/bin/dotfiles/.iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
    sudo rm -f ~/macrice
    sudo rm -rf ~/dotfiles
    sudo rm -rf ~/fonts
    sudo rm -rf ~/lib
    fish
    fish_add_path /opt/homebrew/bin
    echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
    chsh -s /opt/homebrew/bin/fish
    bash
}

toilet -d /opt/homebrew/Cellar/macrice/**/bin/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
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
