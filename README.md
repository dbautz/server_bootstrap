# server_bootstrap

## Add Ansible
`curl -sSL https://raw.githubusercontent.com/dbautz/server_bootstrap/main/add_ansible.sh | sudo bash`


## ZSH
`sudo apt update && sudo apt install zsh git pipx`

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/dbautz/server_bootstrap/main/bootstrap_shell.sh)" && source ~/.zshrc`
