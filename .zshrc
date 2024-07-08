HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd
bindkey -v

zstyle :compinstall filename "$HOME/.zshrc"
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit

PS1='%F{blue}%~ %F{foreground}$ %F{foreground}'

alias ls="ls --color"
alias la="ls --color -a"
alias ll="ls --color -la --group-directories-first"
alias vim="nvim"
alias :q="exit"
alias :Q="exit"
alias :qa="tmux kill-session"
alias :Qa="tmux kill-session"
alias ...="cd ../.."
alias -- -="cd -"
alias dotf="cd $HOME/.dotfiles"
alias ssha="eval $(ssh-agent)"

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
export PATH="$PATH:$HOME/go/bin"

export PATH="$PATH:/opt/astap"

export GRIM_DEFAULT_DIR="~/Pictures/screenshots"

# up arrow completes command from history
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

export EDITOR=nvim

export FZF_DEFAULT_OPTS=" \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
