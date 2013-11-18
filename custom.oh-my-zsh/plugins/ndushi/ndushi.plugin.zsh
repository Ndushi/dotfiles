# p - navigate to a folder in ~/Projects
p() { cd $HOME/Projects/$1; }
_p() { _files -W $HOME/Projects -/; }
compdef _p p


# alt+s to insert sudo at beginning of line
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo