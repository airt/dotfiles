#!/usr/bin/env zsh

plugins=(git macos z)
zstyle ':omz:update' mode disabled
export ZSH_THEME=bira
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias k='l'
alias v='vim'
alias c='code'
alias ls='lsd'
alias rm='trash'
alias code='cursor'
alias tree='lsd --tree'

export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

source $HOME/.mirrors
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ -x $(command -v brew) ]] && eval "$(brew shellenv)"
[[ -x $(command -v starship) ]] && eval "$(starship init zsh)"
[[ -x /usr/libexec/java_home ]] && JAVA_HOME=$(/usr/libexec/java_home -v 17)
export JAVA_HOME

fortune | lolcat || true
