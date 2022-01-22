#! /bin/zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

pip3 install thefuck --user

curl https://raw.githubusercontent.com/dbautz/server_bootstrap/main/dbautz.zsh-theme --output ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dbautz.zsh-theme
curl https://raw.githubusercontent.com/dbautz/server_bootstrap/main/.zshrc --output ~/.zshrc

source ~/.zshrc
