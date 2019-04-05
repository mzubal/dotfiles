#!/usr/bin/env bash

# zsh + oh-my-zsh
sudo pacman -Sy zsh
sudo pacman -Sy zsh-completions
chsh -s /usr/bin/zsh
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.zshrc > ~/.zshrc
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" || true
