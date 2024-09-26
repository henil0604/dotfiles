#! /bin/bash

DOTFILES=$(pwd)

# install required packages and tools
$DOTFILES/scripts/install-requirements.sh

# link files
stow --adopt -t "$HOME" -v 2 -d "$DOTFILES" .

echo "DONE"