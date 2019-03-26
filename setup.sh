#!/usr/bin/env bash
sudo pacman -Sy gvim
sudo pacman -Sy docky
sudo pacman -Sy terminator
sudo pacman -Sy zsh
sudo pacman -Sy zsh-completions
chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.zshrc > ~/.zshrc
source ~/.zshrc
sudo wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > ~/etc/vimrc
xfconf-query -c xfce4-panel -p /panels/panel-0/position -n -t string -s "p=6;x=512;y=14"
pacin python-pip
pacin thefuck
pacin httpie

sudo pip install mycli
