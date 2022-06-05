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
export REMOTE_URL="https://github.com/Nrosa01/Demeter"
# Where is the backup folder. VSC folder name and system folder must match
export DEMETER="$HOME/Demeter"

# Restoring backup
if [[ -d "$DEMETER" ]]
then
	# "$DEMETER" folder already exist on this machine, testing origin
	echo "Found Demeter folder on $DEMETER, checking source"
	cd "$DEMETER" || exit 100
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
	cd "$PARENT_FOLDER" || exit 100

	git clone "$REMOTE_URL"
fi


# Create links
cd "$DEMETER/backup" || exit 100

echo "Creating links"
for TEMP in $(ls -A)
do
	echo "Linking $TEMP"
	# Delete the file before making the symlink, just in case
	rm "$HOME/$TEMP" 2> /dev/null
	ln -nfs "$DEMETER/backup/$TEMP" "$HOME/$TEMP"
done

# Creating vim folders
cd "$HOME" || exit 100
mkdir -p "$HOME/.vim/undodir" 2> /dev/null

if [[ $(uname) == 'Linux' ]]
then
    # Linux specific config
	rm "$HOME/.gitconfig"
	ln -nfs "$DEMETER/linux/.gitconfig" "$HOME/.gitconfig"
	
elif [[ $(uname) == 'FreeBSD' ]]
then
    # FreeBSD specific config
	rm "$HOME/.gitconfig"
	ln -nfs "$DEMETER/bsd/.gitconfig" "$HOME/.gitconfig"
fi

# Install OMZ
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install PLugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting 

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# Theme

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

chsh -s $(which zsh) < $(readline)

exit 0
