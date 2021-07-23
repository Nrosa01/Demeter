
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

# >>> coursier install directory >>>
export PATH="$PATH:/Users/compux72/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
. "$HOME/.cargo/env"
