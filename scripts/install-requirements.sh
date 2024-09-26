#! /bin/bash

# update apt
sudo apt update -y

# BASE REQUIREMENT
sudo apt-get install -y \
	git \
    stow \
	zsh \
	fzf

# remove previous .oh-my-zsh
rm -rf ~/.oh-my-zsh

echo "Installing Oh-My-Zsh"
# Prevent Oh-My-Zsh from launching zsh during installation
RUNZSH=no sh -c "$(curl -fsSL https://install.ohmyz.sh)"

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/refs/heads/master/install.sh | bash

echo "Installing zoxide"
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
