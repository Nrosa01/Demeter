# Disable compinit to improve performance
skip_global_compinit=1
# Rust cargo
. "$HOME/.cargo/env"

# >>> coursier install directory >>>
export PATH="$PATH:/Users/compux72/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
. "$HOME/.cargo/env"

# Disable some less nonsense
export LESSHISTFILE=-

# Java Home jdk 16
export JAVA_HOME="/Library/Java/JavaVirtualMachines/openjdk-16.0.1/Contents/Home"

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

# nvm. It's sloooooooow. Use fnm instead
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm alternative. Faster, built using Rust
alias nvm='fnm'


# Python 3.9
path+="$HOME/Library/Python/3.9/bin"


######################################
# Aliases
######################################
alias iterm='open -a "iterm"'
alias dev='cd "$HOME/Developer/"'
