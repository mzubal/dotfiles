# Chromium
pacin freetype2 --noconfirm
pacin chromium --noconfirm

# gvim to integrate clipboard with vim, the vimrc to enable clipboard and map ctrl-c to copy from vim
pacin gvim --noconfirm
sudo sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/vimrc > /etc/vimrc'

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

# i3 config
sh -c 'wget -qO - https://raw.githubusercontent.com/mzubal/dotfiles/master/i3.config > ~/.i3/config'

# CLI tools
pacin thefuck --noconfirm
pacin httpie --noconfirm

# Ansible
pacin ansible --noconfirm

# SDKMan
pacin unzip --noconfirm
pacin zip --noconfirm
curl -s "https://get.sdkman.io" | bash
