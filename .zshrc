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
export TERM=xterm-256color
if command -v vim.tiny &> /dev/null
then
    export EDITOR=vim.tiny
elif command -v vim &> /dev/null
then
    export EDITOR=vim
elif command -v vim.basic &> /dev/null
then
    export EDITOR=vim.basic
elif command -v vi &> /dev/null
then
    export EDITOR=vi
fi
