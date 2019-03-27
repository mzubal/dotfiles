#!/usr/bin/env bash

# zsh + oh-my-zsh
sudo pacman -Sy zsh
sudo pacman -Sy zsh-completions
chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.zshrc > ~/.zshrc
source ~/.zshrc

# gvim to integrate clipboard with vim, the vimrc to enable clipboard and map ctrl-c to copy from vim
pacin gvim
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > /etc/vimrc'

# Browser
pacin chromium

# Dock
sudo pacman -Sy docky
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/docky-config.xml > ~/docky-config.xml
sudo gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.defaults --load ~/docky-config.xml

# Terminal
sudo pacman -Sy terminator
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/terminator-config > ~/.config/terminator/config

# Moving xfce panel to top
xfconf-query -c xfce4-panel -p /panels/panel-0/position -n -t string -s "p=6;x=512;y=14"

# CLI tools
pacin python-pip
sudo pip install mycli
sudo pip install pgcli
pacin thefuck
pacin httpie

# Ansible
pacin ansible

# SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

