#!/bin/zsh
echo "This script will only setup the simlinks required for \
config files. Yoy need to manualy install the tools using brew, \
omz, etc. See README.md"

export BACKUP=$HOME/.backup/

mkdir $BACKUP
ln -s * $BACKUP
cd $HOME
ls -la

exit 0 
