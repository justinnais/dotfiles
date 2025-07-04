# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"

plugins=(alias-finder git gh eza starship zoxide zsh-autosuggestions)
ZSH_ALIAS_FINDER_AUTOMATIC=truesource

. ~/.zsh_aliases

source $ZSH/oh-my-zsh.sh
eval "$(fnm env --use-on-cd --shell zsh)"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
