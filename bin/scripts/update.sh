#!/bin/bash

# cd "$(dirname "${BASH_SOURCE}")";
# git pull origin main;

function updateTorpdots() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "update.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	updateTorpdots;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		updateTorpdots;
	fi;
fi;
unset updateTorpdots;
