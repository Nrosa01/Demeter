#!/bin/sh
echo "This script will only setup the symlinks required for \
config files. You need to manually install the tools using brew, \
omz, etc. See README.md"

cd $HOME

if [ -z $GITHUB_WORKSPACE ]
then
	# Restoring backup
	git clone https://github.com/Altair-Bueno/Demeter
	export DEMETER=$HOME/Demeter
else 
	# If CI workflow
	export DEMETER=$GITHUB_WORKSPACE
fi

ln -s $DEMETER/* $HOME
ls -la

echo "Done"

exit 0 
