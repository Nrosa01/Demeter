# Rust cargo
. "$HOME/.cargo/env"

# Java Home jdk 14
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-14.0.1.jdk/Contents/Home

#Bison
export PATH="$PATH:/usr/local/opt/bison/bin"

# Stack
export PATH="$PATH:/usr/local/bin/stack"

# Stack binaries
export PATH="$PATH:$HOME/.local/bin"

# JetBrains toolbox shell script location
export PATH="$PATH:$HOME/.jetbrains"

# Commandline utils made with zsh
export PATH="$PATH:$HOME/Demeter/scripts"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


######################################
# Aliases
######################################
alias iterm='open -a "iterm"'

