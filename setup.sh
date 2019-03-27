#!/usr/bin/env bash

# zsh + oh-my-zsh
sudo pacman -Sy zsh
sudo pacman -Sy zsh-completions
chsh -s /usr/bin/zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.zshrc > ~/.zshrc
source ~/.zshrc
exit

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
xfconf-query -c xfwm4 -p /general/show_dock_shadow -n -t string -s false

# MacOS like Themes and Icons
mkdir -p ~/.themes
mkdir -p ~/.icons
wget -O ~/Downloads/McOS-XFCE-theme.tar.xz "https://dl.opendesktop.org/api/files/download/id/1536340023/s/860fda334d70bb5ae835803bda31139c48a7d8e29ce4393bdacbe58683d0eb21297dab3fd7b995b8e8f6ee101a3811f8d6c85c0941583dac3e5dbf19ab446e90/t/1553700391/u//McOS-XFCE-Edition-II-1.tar.xz"
wget -O ~/Downloads/McOS-XFCE-icons.tar.xz "https://dl.opendesktop.org/api/files/download/id/1553260995/s/5ced1b4d52c63b9ce180047989669327f6007c262e0c73f3876220ffb1bba9596bd0ee7d5f910b7ab05ee7e8e70783d9c61504386855435b0361460ee04f8902/t/1553701260/u//dark-mode.tar.xz"
tar -C ~/.icons -xf ~/Downloads/McOS-XFCE-icons.tar.xz
tar -C ~/.themes -xf ~/Downloads/McOS-XFCE-theme.tar.xz
xfconf-query -c xsettings -p /Net/ThemeName -s "McOS-XFCE-Edition-II-1"
xfconf-query -c xsettings -p /Net/IconThemeName -s "dark-mode"
xfconf-query -c xfwm4 -p /general/button_layout -n -t string -s "CHM|OS"

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

