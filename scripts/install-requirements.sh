#! /bin/bash

# BASE REQUIREMENT
sudo apt-get install -y \
	git \
    stow \
	zsh

# install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions