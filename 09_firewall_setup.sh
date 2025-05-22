#!/bin/bash

# Enable UFW if disabled
sudo ufw enable

# Allow SSH, HTTP, Grafana (3000), Loki (3100)
sudo ufw allow OpenSSH
sudo ufw allow 3000/tcp
sudo ufw allow 3100/tcp

# Check status
sudo ufw status
