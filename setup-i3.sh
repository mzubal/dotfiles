# Chromium
pacin freetype2 --noconfirm
pacin chromium --noconfirm

# Qutebrowser
pacin qutebrowser --noconfirm

# gvim to integrate clipboard with vim, the vimrc to enable clipboard and map ctrl-c to copy from vim
pacin gvim --noconfirm
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > /etc/vimrc'
pacin vim-surround

# atltab
pacin uthash --noconfirm
cd
git clone https://github.com/sagb/alttab.git 
cd alttab
./bootstrap.sh
./configure && sudo make install
cd

pacin tmux --noconfirm
pacin rofi --noconfirm

# .profile / i3 config / compton config / Xresources
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.profile > ~/.profile
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/i3.config > ~/.i3/config
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/compton.conf > ~/.config/compton.conf
wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/.Xresources > ~/.Xresources

# CLI tools
pacin thefuck --noconfirm
pacin httpie --noconfirm
yay -S mycli
yay -S pgcli

# Ansible
pacin ansible --noconfirm

# SDKMan
pacin unzip --noconfirm
pacin zip --noconfirm
curl -s "https://get.sdkman.io" | bash

# Docker
pacin docker
sudo usermod -aG docker manjaro
