#! /bin/bash

DOTFILES=$(pwd)
TARGET_DIR=$HOME
INSTALL_REQUIREMENTS=true

# Check for --no-install-requirements argument
for arg in "$@"; do
    if [[ "$arg" == "--no-install-requirements" ]]; then
        INSTALL_REQUIREMENTS=false
        break
    fi
done

# Install required packages and tools unless --no-install-requirements is provided
if [[ "$INSTALL_REQUIREMENTS" == true ]]; then
    if [[ -x "$DOTFILES/scripts/install-requirements.sh" ]]; then
        "$DOTFILES/scripts/install-requirements.sh"
    else
        echo "Error: $DOTFILES/scripts/install-requirements.sh is not executable or not found."
        exit 1
    fi
fi

# Check if `stow` is installed
if ! command -v stow &> /dev/null; then
    echo "Error: 'stow' is not installed. Please install it before running this script."
    exit 1
fi

# Link files using stow
stow --adopt -t "$TARGET_DIR" -v 2 -d "$DOTFILES" .

echo "DONE"