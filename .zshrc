PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dbautz"

HIST_STAMPS="yyyy-mm-dd"

plugins=(history-substring-search zsh-autosuggestions thefuck systemadmin jsontools)

zstyle ':omz:update' mode auto

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR='vim'
