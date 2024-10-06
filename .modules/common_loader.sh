# Load all of your modules here
# this file is sourced by the .bashrc file and .zshrc file

source $HOME/.bash-utils.sh

export PATH="$PATH:$HOME/.local/bin"

load_module aliases
load_module nvm
load_module zoxide
load_module rust
load_module bun