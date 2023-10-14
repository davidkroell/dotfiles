#! /usr/bin/env bash

# check if running with correct privileges
if [ "$EUID" -ne 0 ]
  then echo "Please run script with sudo"
  exit 1
fi


echo "Installing default programs"
PROGRAMS="zsh clang clang-format clang-tools gcc cloc glibc-doc git bat awscli nmap tree valgrind"

apt install -y $PROGRAMS 

echo "Set ZSH as default shell"
chsh -s $(which zsh)


echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


