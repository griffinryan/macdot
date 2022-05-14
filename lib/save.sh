#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

# dotfile backup script
NC='\033[0m';               # No Color
RED='\033[0;31m';           # Red
LIGHTRED='\033[1;31m';      # Light Red
GREEN='\033[0;32';          # Green
LIGHTGREEN='\033[1;32';     # Light Green
BLUE='\033[0;34m';          # Blue
LIGHTBLUE='\033[1;34m';     # Light Blue
CYAN='\033[0;36m';          # Cyan
LIGHTCYAN='\033[1;36m';     # Light Cyan
YELLOW='\033[0;33m';        # Yellow
LIGHTYELLOW='\033[1;33m';   # Light Yellow
PURPLE='\033[0;35m';        # Purple
LIGHTPURPLE='\033[1;35m';   # Light Purple

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
# Install dotfiles to ~/.* from /usr/local/share/torpdots/dotfiles/.*
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    # force dotfileInstall() with -f argument
    dotfileSave
    # Status message.
    echo "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}save${NC}' backed up dotfiles to ${LIGHTBLUE}/~/.macrice/${NC}"
else
    # Status message.
    echo "    This will ${LIGHTRED}overwrite${NC} the ${LIGHTRED}existing${NC} backup in ${LIGHTBLUE}/~/.macrice/${NC}. ${LIGHTRED}Are you sure?${NC} "
    read -p "   (y/n):" -n 1
    echo;
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        dotfileSave
        # Help page for macrice - a macOS configuration tool.
        toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
        # Status message.
        echo "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}save${NC}' backed up dotfiles to ${LIGHTBLUE}/~/.macrice/${NC}"
    fi;
fi;
unset dotfileInstall
