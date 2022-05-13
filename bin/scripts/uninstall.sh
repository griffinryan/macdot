#!/bin/bash
NC='\033[0m'            # No Color
RED='\033[0;31m'            # Red
LIGHTRED='\033[1;31m'       # Light Red
GREEN='\033[0;32'           # Green
LIGHTGREEN='\033[1;32'      # Light Green
BLUE='\033[0;34m'           # Blue
LIGHTBLUE='\033[1;34m'      # Light Blue
CYAN='\033[0;36m'           # Cyan
LIGHTCYAN='\033[1;36m'      # Light Cyan
YELLOW='\033[0;33m'         # Yellow
LIGHTYELLOW='\033[1;33m'    # Light Yellow
PURPLE='\033[0;35m'         # Purple
LIGHTPURPLE='\033[1;35m'    # Light Purple

# Uninstall process script for macrice
echo
echo -e "Now ${LIGHTPURPLE}uninstalling${NC} ${BLUE}macrice${NC}..." && echo
rm -rf /usr/local/share/macrice
rm -rf /usr/local/bin/macrice

echo -e "${BLUE}macrice${NC} is now ${YELLOW}uninstalled!${NC}" && echo
echo -e "Use the ${LIGHTPURPLE}/macrice/${NC}${YELLOW}.install${NC} ${CYAN}executable${NC} to reinstall ${BLUE}macrice${NC}!" && echo