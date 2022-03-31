################################################################################
# SDKs
################################################################################

# Rust cargo
. "$HOME/.cargo/env"

# Java Home jdk 17
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home"

#Bison
path+='/usr/local/opt/bison/bin'

# Stack
path+='/usr/local/bin/stack'

# Stack binaries
path+="$HOME/.local/bin"

# JetBrains toolbox shell script location
path+="$HOME/.jetbrains"

# Commandline utils made with zsh
path+="$HOME/Demeter/scripts"

# nvm alternative. Faster, built using Rust
path+="$HOME/.fnm"

# Go
export GOPATH="$HOME/.go"
path+="$HOME/.go/bin"

# Homebrew sbin
path+='/usr/local/sbin'

# Mono
export MONO_GAC_PREFIX="/usr/local"

# Glassfish
export GLASSFISH_HOME=/usr/local/opt/glassfish/libexec

# Python 3.10
path+='/usr/local/opt/python@3.10/bin'

######################################
# Aliases
######################################
alias nvm='fnm'
alias iterm='open -a "iterm"'
alias python='python3.10'
alias pip='python -m pip'
alias ascii='asciinema'
alias vim='nvim'
alias vi='nvim'
alias neofetch='macchina'

######################################
# Env variables
######################################
export DEMETER="$HOME/Demeter"

######################################
# Functions
######################################

function dev {
    cd "$HOME/Developer/$1"
}

######################################
# OS dependent config
######################################
if [[ $(uname) == 'Darwin' ]]
then
    # macOS specific config

    # WTF Microsoft. Starting a whole Python interpreter for opening vscode????
    # https://github.com/microsoft/vscode/issues/60579
    function code {
        for arg in $*
        do 
            mkdir -p "$(dirname "$arg")"
            touch "$(basename "$arg")"
        done
        open -b com.microsoft.VSCode $*
    }

    # Upgrade all Homebrew packages, zsh plugins and omz
    function sysupgrade {
        brew update
        brew upgrade
        omz update
        rustup update stable
        for plugin in $ZSH_CUSTOM/*/*
        do
            if [[ -d "$plugin" ]]
            then
                git -C "$plugin" pull
            fi
        done 
    }

    # From https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/macos
    function man-preview {
        man -w "$@" &> /dev/null && man -t "$@" | open -f -a Preview || man "$@"
    }
    function quick-look {
        (( $# > 0 )) && qlmanage -p $* &> /dev/null &
    }
elif [[ $(uname) == 'Linux' ]]
then
    # Linux specific config
    alias open='xdg-open'
fi
