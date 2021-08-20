#!/bin/zsh
echo "This script will only setup the symlinks required for \
config files. You need to manually install the tools using brew, \
omz, etc. See README.md"

# Move to Home dir
cd "$HOME"

# Check CI
if [ -z "$GITHUB_WORKSPACE" ];
then
	# Restoring backup
	export DEMETER="$HOME/Demeter"
	if [[ -d "$DEMETER" ]]
	then
		echo "Directory already exist, skipping clone"
	else 
		git clone https://github.com/Altair-Bueno/Demeter
	fi
else 
	# If CI workflow
	export DEMETER="$GITHUB_WORKSPACE"
fi


# Create links
cd "$DEMETER/backup"

for TEMP in .*
do
	echo "Linking $TEMP"
	ln -nfs "$DEMETER/backup/$TEMP" "$HOME"
done




