#!/usr/bin/env zsh

plugins=(git osx z)
export ZSH_THEME=bira
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

alias k='l'
alias v='vim'
alias ls='exa'
alias rm='trash'
alias tree='exa --tree'
alias zip='zip -x "*.DS_Store"'

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1

[[ -x $(command -v starship) ]] && eval "$(starship init zsh)"
[[ -x /usr/libexec/java_home ]] && JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME

fortune | lolcat || true
