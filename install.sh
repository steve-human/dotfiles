#!/bin/bash

# Install Ansible (using pacman for Arch Linux)
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm ansible stow

# Clone the dotfiles repo
git clone https://github.com/steve-human/dotfiles.git

# Use stow to manage your dotfiles
cd $HOME/dotfiles

stow .

# 1. Install packages
ansible-playbook $HOME/.dotfiles/ansible/main.yml

echo "All playbooks have been executed successfully!"