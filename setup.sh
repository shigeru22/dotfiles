#!/bin/bash

echo "Linking Bash files..."

if [[ -f "$HOME/.bash_profile" ]]; then
	echo "  Backing up ~/.bash_profile..."
	mv $HOME/.bash_profile $HOME/.bash_profile.bak
fi

if [[ -f "$HOME/.bashrc" ]]; then
	echo "  Backing up ~/.bashrc..."
	mv $HOME/.bashrc $HOME/.bashrc.bak
fi

echo "  Linking ~/.bash_profile"
ln -s $PWD/bash/bash_profile $HOME/.bash_profile

echo "  Linking ~/.bashrc..."
ln -s $PWD/bash/bashrc $HOME/.bashrc

# echo "  Linking ~/.blerc..."
# ln -s $PWD/bash/blerc $HOME/.blerc

echo "Linking Starship files..."

echo "  Linking ~/.config/starship.toml..."
ln -s $PWD/starship/starship.toml $HOME/starship.toml
