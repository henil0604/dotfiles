# dotfiles

This directory contains the dotfiles for my machine

## Requirements

Ensure you have the following packages/tools installed on your system:

### Git

```bash
sudo apt install -y git
```

## Installation

First, clone the dotfiles repo in your `$HOME` directory using `git`

```bash
cd $HOME
git clone https://github.com/henil0604/dotfiles
cd dotfiles
```

then, use the `scripts/install.sh` folder inside the `dotfiles` directory to start the installation process.

```bash
chmod +x ./scripts/*
./scripts/install.sh
```

next, restart your shell.

and thats it!
