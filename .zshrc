# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(alias-finder gh git terraform z)

source $ZSH/oh-my-zsh.sh

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. ~/.zsh_aliases
ZSH_ALIAS_FINDER_AUTOMATIC=true
