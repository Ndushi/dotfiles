#!/bin/bash

DIR="$PWD"

# All the .-prefixed files
files=(aliases exports functions gemrc gitconfig gitignore irbrc LS_COLORS path sqliterc vimrc wgetrc zshenv zshrc)

for file in ${files[@]}; do
	cp "$DIR/$file" "$HOME/.$file"
done

unset $file

# Copy my vim configuration
cp -r vim $HOME/.vim


# Pull down omz if not already exists
if [[ ! -d $HOME/.oh-my-zsh ]]; then
	git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# Copy my own custom config for omz
# rm -rf $HOME/.oh-my-zsh/custom
[ -h $HOME/.oh-my-zsh/custom/themes ] || ln -s $DIR/custom.oh-my-zsh/themes $HOME/.oh-my-zsh/custom/themes
[ -h $HOME/.oh-my-zsh/custom/plugins ] || ln -s $DIR/custom.oh-my-zsh/plugins $HOME/.oh-my-zsh/custom/plugins
