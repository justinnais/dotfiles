# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(alias-finder git eza starship zoxide zsh-autosuggestions)
ZSH_ALIAS_FINDER_AUTOMATIC=true

source $ZSH/oh-my-zsh.sh

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. ~/.zsh_aliases
