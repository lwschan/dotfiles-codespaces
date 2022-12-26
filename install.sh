#!/usr/bin/env bash

bash ./scripts/git-config.sh

sudo apt update

sudo apt upgrade -y

bash ./scripts/install-stow.sh

rm $HOME/.zshrc

# Stow ssh files
stow --verbose --target=$HOME/ --dir=zsh .

# Stow zsh themes
stow --verbose --target=$HOME/.oh-my-zsh/custom/themes --dir=zsh-themes .

# Stow zsh plugins
stow --verbose --target=$HOME/.oh-my-zsh/custom/plugins --dir=zsh-plugins .
