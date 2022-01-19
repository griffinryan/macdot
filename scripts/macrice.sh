#!/bin/bash
# macrice main     set at: /usr/local/bin/macrice
# functions: help, list, install-homebrew, formula, cask, apple, dot
# path: /usr/local/share/macrice/*         scripts/*       assets/*

# all macrice() functions are set here

function showInfo() {
    # run script for info.sh
    source /usr/local/share/macrice/scripts/info.sh
}

function displayList() {
    # run script for list.sh
    source /usr/local/share/macrice/scripts/list.sh
}

function installBrew() {
    # run script for install-homebrew.sh
    source /usr/local/share/macrice/scripts/install-homebrew.sh
}

function brewFormula() {
    # run script for formula.sh
    source /usr/local/share/macrice/scripts/formula.sh
}

function brewCask() {
    # run script for cask.sh
    source /usr/local/share/macrice/scripts/cask.sh
}

function appleConfig() {
    # run Applescript for apple executable
    source /usr/local/share/macrice/scripts/apple
}

function dotConfig() {
    # run script for dot.sh
    source /usr/local/share/macrice/scripts/dot.sh
}

function uninstallTorpdots() {
    # run script for uninstall.sh
    source /usr/local/share/macrice/scripts/uninstall.sh
}

# main loop set here
if [[ -z "$1" ]]; then
    # uses info.sh
    showInfo;
elif [[ "$1" == "help" || "$1" == "-h" ]]; then
    showInfo;
elif [[ "$2" == "help" || "$2" == "-h" ]]; then
    showInfo;
fi;

if [[ "$1" == "list" || "$1" == "-l" ]]; then
    # uses list.sh
    displayList;
elif [[ "$1" == "install-homebrew" || "$1" == "installhomebrew" || "$1" == "homebrew" ]]; then
    # uses install-homebrew.sh
    installBrew;
elif [[ "$1" == "formula" || "$1" == "formulae" ]]; then
    # uses formula.sh
    brewFormula;
elif [[ "$1" == "uninstall" || "$1" == "uninstaller" ]]; then
    # uses uninstall.sh
    uninstallTorpdots;
elif [[ "$1" == "cask" || "$1" == "casks" || "$1" == "-c" ]]; then
    # uses cask.sh
    brewCask;
elif [[ "$1" == "apple" || "$1" == "-a" ]]; then
    # uses apple (executable Applescript)
    appleConfig;
elif [[ "$1" == "dot" || "$1" == "-d" ]]; then
    dotConfig;
else
    echo -e "\033[1;35m|\033[1;34m macrice\033[0m needs an\033[1;35m argument\033[0m! \033[1;35m|\033[0m" && echo
fi;

unset showInfo;
unset displayList;
unset installBrew;
unset brewFormula;
unset brewCask;
unset appleConfig;
unset dotConfig;