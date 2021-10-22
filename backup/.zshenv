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

# Java Home jdk 17
export JAVA_HOME="/usr/local/Cellar/openjdk/17/libexec/openjdk.jdk/Contents/Home"

# Use bat as pager instead
export PAGER="bat"

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

# ZSH completitions
export SHELL_COMPLETIONS_DIR="$HOME/.oh-my-zsh/completions"

# Mermaid filter (https://github.com/raghur/mermaid-filter)
# export MERMAID_FILTER_FORMAT='svg'

# nvm alternative. Faster, built using Rust
alias nvm='fnm'


# Python 3.9
path+="$HOME/Library/Python/3.9/bin"


######################################
# Aliases
######################################
alias iterm='open -a "iterm"'
alias dev='cd "$HOME/Developer/"'
alias python='python3.9'
