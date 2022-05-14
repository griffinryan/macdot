#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

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

# Help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Status message.
echo  "       '${LIGHTPURPLE}macrice${NC}' is now installing iTerm2 color profiles.";

# install .itermcolor files.
open /opt/homebrew/Cellar/macrice/**/dotfiles/.iterm/themes/*
/bin/cp /opt/homebrew/Cellar/macrice/*.*.*/dotfiles/.iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Status message.
echo  "       '${LIGHTPURPLE}macrice${NC} ${LIGHTYELLOW}iterm${NC}' is now  ${LIGHTGREEN}complete!${NC}";