# p - navigate to a folder in ~/Projects
p() { cd $HOME/Projects/$1; }
_p() { _files -W $HOME/Projects -/; }
compdef _p p


# alt+s to insert sudo at beginning of line
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# sh completion
compdef '_files -g "*.sh"' sh


# history haxx, from: http://superuser.com/a/691603
bindkey "[[1;5A" up-line-or-local-history
bindkey "[[1;5B" down-line-or-local-history

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history