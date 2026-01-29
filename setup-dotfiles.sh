#! /usr/bin/env bash

echo "Creating a backup of your current dotfiles to ./olddotfiles"
# ensure directory exists
mkdir -p olddotfiles/

mv $HOME/.zshrc ./olddotfiles/
mv $HOME/.vimrc ./olddotfiles/
mv $HOME/.config/starship.toml ./olddotfiles/
mv $HOME/.gitconfig ./olddotfiles/


echo "Creating symlinks from your home dir to the current directory"

mkdir -p $HOME/.config

ln -s $PWD/.zshrc $HOME/.zshrc

ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/starship.toml $HOME/.config/starship.toml
ln -s $PWD/.gitconfig $HOME/.gitconfig


echo "Backing up known_hosts and linking it"

mv $HOME/.ssh/known_hosts ./olddotfiles/
ln -s $PWD/.ssh/known_hosts $HOME/.ssh/known_hosts


