#! /usr/bin/env bash

# check if running with correct privileges
if [ "$EUID" -ne 0 ]
  then echo "Please run script with sudo"
  exit 1
fi


echo "Installing default programs"
PROGRAMS="zsh"

apt install -y $PROGRAMS 

echo "Set ZSH as default shell"
chsh -s $(which zsh)

