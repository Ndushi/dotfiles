#!/bin/bash

# All the .-prefixed files
files=(aliases exports functions gemrc gitconfig gitignore LS_COLORS sqliterc vimrc wgetrc zshrc)

for $file in ($files); do
	cp $file $HOME/.$file
done

unset $file

# Copy my vim configuration
cp -r vim $HOME/.vim


# Pull down omz if not already exists
if [[ ! -d $HOME/.oh-my-zsh ]]
	git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# Copy my own custom config for omz
rm -rf $HOME/.oh-my-zsh/custom
cp -r custom.oh-my-zsh $HOME/.oh-my-zsh/custom