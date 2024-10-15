#! /usr/bin/env bash

# check if running with correct privileges
if [ "$EUID" -ne 0 ]
  then echo "Please run script with sudo"
  exit 1
fi


echo "Installing default programs"
PROGRAMS="curl zsh cloc bat nmap tree fzf direnv"

apt install -y $PROGRAMS 

echo "Set ZSH as default shell"
chsh -s $(which zsh)


echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "install starship"

curl -sS https://starship.rs/install.sh | sh

