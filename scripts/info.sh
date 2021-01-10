#!/bin/bash

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

# help page for torpdots - a macOS configuration tool.
echo -e "${LIGHTYELLOW}  __________________________________________________________________${NC}";
cat /usr/local/share/torpdots/assets/asciititle.txt

echo;
echo -e "    Welcome to ${LIGHTBLUE}torpdots${NC} -";
echo -e "      a ${LIGHTPURPLE}macOS${NC} command-line utility to configure dotfiles and more." && echo;
echo -e "    To use ${LIGHTBLUE}torpdots${NC}, specify an ${LIGHTYELLOW}argument${NC}." && echo;
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}help${NC}' to display this page.";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}update${NC}' to update ${LIGHTBLUE}torpdots${NC}.";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}list${NC}' to list supported formulae, casks, and dotfiles";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}install-homebrew${NC}' to install the latest version of Homebrew";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}formula${NC}' to install popular homebrew formulae";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}cask${NC}' to install popular homebrew casks";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}apple${NC}' to configure macOS with Applescript ${RED}(use with caution!)${NC}";
echo -e "    '${LIGHTBLUE}torpdots${NC} ${LIGHTYELLOW}dot${NC}' to install all dotfiles ${RED}(use with caution!)${NC}";
echo -e "${LIGHTYELLOW}  __________________________________________________________________${NC}";
