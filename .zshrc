# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"

plugins=(alias-finder asdf git gh eza starship zoxide zsh-autosuggestions)
ZSH_ALIAS_FINDER_AUTOMATIC=truesource

. ~/.zsh_aliases

source $ZSH/oh-my-zsh.sh
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
