#!/bin/bash

# macrice — glryan@uw.edu	|	https://griffinryan.com/

NC='\33[0m';              # No Color
RED='\33[0;31m';          # Red
LIGHTRED='\33[1;31m';      # Light Red
GREEN='\33[0;32';          # Green
LIGHTGREEN='\33[1;32m';     # Light Green
BLUE='\33[0;34m';          # Blue
LIGHTBLUE='\33[1;34m';     # Light Blue
CYAN='\33[0;36m';          # Cyan
LIGHTCYAN='\33[1;36m';     # Light Cyan
YELLOW='\33[0;33m';        # Yellow
LIGHTYELLOW='\33[1;33m';   # Light Yellow
PURPLE='\33[0;35m';        # Purple
LIGHTPURPLE='\33[1;35m';   # Light Purple

# Help page for macrice - a macOS configuration tool.
toilet -d /opt/homebrew/Cellar/macrice/**/fonts -f larry3d 'Macrice' | boxes -d parchment | lolcat -p 5
# Status message.

printf "       '\33[1;35mmacrice\33[0m' to display this page.\n";
printf "       '\33[1;35mmacrice\33[0m \33[1;33msave\33[0m' to \33[1;32mbackup\33[0m dotfiles in \33[1;34m/~/...\33[0m to \33[1;34m/~/.macrice/\33[0m.\n";
printf "       '\33[1;35mmacrice\33[0m \33[1;33mdot\33[0m' to \33[1;32mbackup\33[0m and \33[1;32minstall\33[0m all dotfiles (\33[1;31muse with caution!\33[0m).\n";
printf "       '\33[1;35mmacrice\33[0m \33[1;33mapple\33[0m' to \33[1;32mconfigure macOS\33[0m with Applescript (\33[1;31muse with caution!\33[0m).\n";
printf "       '\33[1;35mmacrice\33[0m \33[1;33miterm\33[0m' to \33[1;32mconfigure iTerm2\33[0m preferences.\n";
printf "       '\33[1;35mmacrice\33[0m \33[1;33mkegs\33[0m' to \33[1;32minstall\33[0m popular homebrew formulae.\n";