#!/bin/sh
echo "This script will only setup the symlinks required for \
config files. You need to manually install the tools using brew, \
omz, etc. See README.md"

# Move to Home dir
cd "$HOME"

# Check CI
if [ -z "$GITHUB_WORKSPACE" ];
then
	# Restoring backup
	git clone https://github.com/Altair-Bueno/Demeter
	export DEMETER="$HOME/Demeter"
else 
	# If CI workflow
	export DEMETER="$GITHUB_WORKSPACE"
fi

# Create links
ln -s "$DEMETER"/.* "$HOME"

# Successfull
if ls -la | grep ".zshrc ->";
then
	echo "Done"
	exit 0 
else
	echo "Err"
	exit 1	
fi	



