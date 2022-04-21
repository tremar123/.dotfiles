if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

    alias vim="nvim"
    alias config="git --git-dir=$HOME/.dotfiles"

    alias :q="exit"
    alias :Q="exit"

    function dev
        if not set -q argv[1]
            cd $HOME/Development/
            ls
        else
            cd $HOME/Development/$argv[1]
        end
    end
end
