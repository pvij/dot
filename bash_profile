source ~/.bashrc

export TERM="xterm-256color"

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# >>> coursier install directory >>>
export PATH="$PATH:/Users/prabhatikavij/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<
