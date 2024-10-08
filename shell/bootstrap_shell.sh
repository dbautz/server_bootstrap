#! /bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

pipx install thefuck

curl https://raw.githubusercontent.com/dbautz/server_bootstrap/main/shell/dbautz.zsh-theme --output ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dbautz.zsh-theme
curl https://raw.githubusercontent.com/dbautz/server_bootstrap/main/shell/.zshrc --output ~/.zshrc
