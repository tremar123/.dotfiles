HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v

zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit

PS1='%F{green}%~ %F{foreground}$ %F{foreground}'

alias ls="ls --color"
alias la="ls --color -a"
alias ll="ls --color -la --group-directories-first"
alias vim="nvim"
alias :q="exit"
alias :Q="exit"

function dev {
    if [ "$1" != "" ]; then
        cd "$HOME/Development/$1"
    else
        cd "$HOME/Development"
        ls
    fi
}

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"

export PATH="$PATH:$HOME/.npm-packages/bin"
