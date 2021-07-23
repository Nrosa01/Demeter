#!/bin/zsh
echo "This script will only setup the simlinks required for \
config files. Yoy need to manualy install the tools using brew, \
omz, etc. See README.md"

cd $HOME
git clone https://github.com/Altair-Bueno/Demeter
ln -s Demeter/* $HOME
ls -la

echo "Done"

exit 0 
