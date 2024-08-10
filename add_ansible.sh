#!/bin/bash

# Variables
ANSIBLE_USER="ansible"
PUBLIC_KEY_URL="https://raw.githubusercontent.com/dbautz/server_bootstrap/main/public_keys/ansible_id_rsa.pub"
SUDO_GROUP="sudo"
SSHD_CONFIG="/etc/ssh/sshd_config"

# Create the Ansible user
sudo useradd -m -s /bin/bash $ANSIBLE_USER

# Create the .ssh directory for the Ansible user
sudo mkdir -p /home/$ANSIBLE_USER/.ssh

# Set the correct permissions for the .ssh directory
sudo chmod 700 /home/$ANSIBLE_USER/.ssh

# Fetch the public key from the URL and add it to the authorized_keys file
curl -s $PUBLIC_KEY_URL | sudo tee /home/$ANSIBLE_USER/.ssh/authorized_keys > /dev/null

# Set the correct permissions for the authorized_keys file
sudo chmod 600 /home/$ANSIBLE_USER/.ssh/authorized_keys

# Change the ownership of the .ssh directory and its contents
sudo chown -R $ANSIBLE_USER:$ANSIBLE_USER /home/$ANSIBLE_USER/.ssh

# Add the Ansible user to the sudo group
sudo usermod -aG $SUDO_GROUP $ANSIBLE_USER

# Allow the Ansible user to run sudo commands without a password (optional)
echo "$ANSIBLE_USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/$ANSIBLE_USER > /dev/null

# Set the correct permissions for the sudoers file
sudo chmod 440 /etc/sudoers.d/$ANSIBLE_USER

# Add the Ansible user to the allowed SSH users
if grep -q "^AllowUsers" $SSHD_CONFIG; then
    if ! grep -q "$ANSIBLE_USER" $SSHD_CONFIG; then
        # If AllowUsers exists and ansible user is not already listed, append it
        sudo sed -i "/^AllowUsers/s/$/ $ANSIBLE_USER/" $SSHD_CONFIG
    fi
else
    # If AllowUsers doesn't exist, add it to the end of the file
    echo "AllowUsers $ANSIBLE_USER" | sudo tee -a $SSHD_CONFIG > /dev/null
fi

# Restart SSH service to apply changes
sudo systemctl restart sshd

echo "Ansible user created, SSH access configured, and added to allowed SSH users."
