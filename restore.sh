#!/bin/bash

###############################################################################
# Restore 1.0                                                                 #
# Altair Bueno MIT license                                                    #
# https://github.com/Altair-Bueno/Demeter                                     #
#                                                                             #
# This script will only setup the symlinks required for commandline utilities #
# such as vim, git or zsh. For some utilities, you may need some extra        #
# configuration, specially if the target system is not macOS (eg: setting zsh #
# as the default shell)                                                       #
#                                                                             #
# To see the full list of installed utilities, see [README.md](README.md)     #
###############################################################################

# Remote VCS
export REMOTE_URL="https://github.com/Altair-Bueno/Demeter"
# Where is the backup folder. VSC folder name and system folder must match
export DEMETER="$HOME/Demeter"


# Restoring backup
if [[ -d "$DEMETER" ]]
then
	# "$DEMETER" folder already exist on this machine, testing origin
	echo "Found Demeter folder on $DEMETER, checking source"
	cd "$DEMETER"
	if [[ $(git config --get remote.origin.url) == "$REMOTE_URL" ]]
	then
		echo "Updating backup..."
		git pull
	else 
		echo "This script expected a different remote server, exiting..."
		exit 1
	fi
else 
	echo "Found no backup on $DEMETER. Cloning from remote"

	export PARENT_FOLDER=$(dirname "$DEMETER")
	cd "$PARENT_FOLDER"

	git clone "$REMOTE_URL"
fi


# Create links
cd "$DEMETER/backup"

echo "Creating links"
for TEMP in $(ls -A)
do
	echo "Linking $TEMP"
	ln -nfs "$DEMETER/backup/$TEMP" "$HOME/$TEMP"
done

# Creating vim folders
cd "$HOME"
mkdir ".vim" 2> /dev/null
mkdir ".vim/undodir" 2> /dev/null

# Setting up the .gitignore_global file
git config --global core.excludesfile ~/.gitignore_global

exit 0