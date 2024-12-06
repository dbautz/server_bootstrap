# server_bootstrap

## Add Ansible
```
curl -sSL https://raw.githubusercontent.com/dbautz/server_bootstrap/main/add_ansible.sh | sudo bash
```



## ZSH
```
sudo apt update && sudo apt install zsh git pipx curl
```
```
chsh -s $(which zsh)
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/dbautz/server_bootstrap/main/shell/bootstrap_shell.sh)" && source ~/.zshrc
```
