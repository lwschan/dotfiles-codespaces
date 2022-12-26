#!/usr/bin/env bash

bash ./scripts/git-config.sh

sudo apt update
sudo apt -y upgrade

bash ./scripts/install-stow.sh
bash ./scripts/install-dev-deps.sh
bash ./scripts/install-google-cloud-cli.sh

# Stow zsh files
rm $HOME/.zshrc
stow --verbose --target=$HOME/ --dir=zsh .

# Stow zsh themes
stow --verbose --target=$HOME/.oh-my-zsh/custom/themes --dir=zsh-themes .

# Stow zsh plugins
stow --verbose --target=$HOME/.oh-my-zsh/custom/plugins --dir=zsh-plugins .

# Stow tfenv
mkdir $HOME/.tfenv
echo 'trust-tfenv: yes' > utilities/tfenv/use-gpgv
stow --verbose --target=$HOME/.tfenv --dir=utilities tfenv
