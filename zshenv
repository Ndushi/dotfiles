[ -f "$HOME/.path" ] && source "$HOME/.path"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
