#!/bin/bash

###############################################################################
# Restore 1.0                                                                 #
# Altair Bueno                                                                #
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
# Where is the backup folder
export DEMETER="$HOME/Demeter"

cd "$HOME"

# Check CI
if [ -z "$GITHUB_WORKSPACE" ];
then
	# Restoring backup

	if [[ -d "$DEMETER" ]]
	then
		# "$HOME/Demeter" folder already exist on this machine, testing origin
		echo "Found Demeter folder on $DEMETER, checking source"
		if [[ $(git config --get remote.origin.url) == "$REMOTE_URL" ]]
		then
			echo "Updating backup"
			git pull
		else 
			echo "This script expected a different remote server, exiting..."
			exit
		fi
	else 
		echo "Found no backup on $DEMETER. Cloning from remote"
		git clone "$REMOTE_URL"
	fi

else 
	# CI doesn't need clone. We can find the path to sources under variable
	export DEMETER="$GITHUB_WORKSPACE"
fi


# Create links
cd "$DEMETER/backup"

echo "Creating links"
for TEMP in .*
do
	echo "Linking $TEMP"
	ln -nfs "$DEMETER/backup/$TEMP" "$HOME"
done
