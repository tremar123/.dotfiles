setopt autocd
bindkey -v

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

alias ls="ls --color"
alias la="ls --color -a"
alias ll="ls --color -la"
alias vim="nvim"
alias :q="exit"
alias :Q="exit"
alias config="git --git-dir=$HOME/.dotfiles"

PS1='%F{green}%~ %F{foreground}$ %F{foreground}'

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"
