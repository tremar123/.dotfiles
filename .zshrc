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
alias ...="cd ../.."
alias -- -="cd -"

function work {
    if [ "$1" != "" ]; then
        cd "$HOME/work/$1"
    else
        cd "$HOME/work"
        ls
    fi
}

function _work_comp {
    local LS=ls
    reply=(`$LS $HOME/work`)
}

compctl -K _work_comp work

function p {
    if [ "$1" != "" ]; then
        cd "$HOME/personal/$1"
    else
        cd "$HOME/personal"
        ls
    fi
}

function _p_comp {
    local LS=ls
    reply=(`$LS $HOME/personal`)
}

compctl -K _p_comp p

export ANDROID_HOME="$HOME/Android/Sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:$ANDROID_HOME/emulator"

export PATH="$PATH:$HOME/.npm-packages/bin"

export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.cargo/bin"

# up arrow completes command from history
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

export EDITOR=nvim
