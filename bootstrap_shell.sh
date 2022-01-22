#! /bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

pip3 install thefuck --user

wget -O ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dbautz.zsh-theme https://raw.githubusercontent.com/dbautz/server_bootstrap/main/dbautz.zsh-theme
wget -O ~/.zshrc https://raw.githubusercontent.com/dbautz/server_bootstrap/main/.zshrc

source ~/.zshrc
