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

######################################
# Aliases
######################################
alias nvm='fnm'
alias iterm='open -a "iterm"'
alias python='python3.10'
alias pip='python -m pip'
alias ascii='asciinema'

# Disable floating images pandoc
# https://stackoverflow.com/a/58840456
# https://gist.github.com/Altair-Bueno/1d50eb67449a971ddf7fb9deb435b6f8
alias sew='pandoc -H "$HOME/.pandoc/header/disable_float.tex" --pdf-engine=xelatex -F mermaid-filter --template eisvogel'

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
    alias code='open -b com.microsoft.VSCode'
elif [[ $(uname) == 'Linux' ]]
then
    # Linux specific config
    alias open='xdg-open'
fi