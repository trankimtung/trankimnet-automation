#!/bin/bash

sudo groupadd -g 9999 automation
sudo useradd -u 9999 -g 9999 -m -s /bin/bash automation
echo "automation ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/automation
sudo chmod 440 /etc/sudoers.d/automation
sudo mkdir -p /home/automation/.ssh
sudo chown -R automation:automation /home/automation/.ssh
sudo chmod 700 /home/automation/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHf+b9XDvHotGhvBRNq7/tCleXbtoFycfg52vwL4lwq7" | sudo tee /home/automation/.ssh/authorized_keys
sudo chown automation:automation /home/automation/.ssh/authorized_keys
sudo chmod 600 /home/automation/.ssh/authorized_keys
