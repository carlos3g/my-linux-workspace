#!/bin/bash
set -e

# - Telegram
wget -c -P ~/Downloads/programs https://telegram.org/dl/desktop/linux

# - woeusb
sudo apt install woeusb -y

# - BalenaEtcher
wget -c -P ~/Downloads/programs https://github.com/balena-io/etcher/releases/download/v1.5.100/balenaEtcher-1.5.100-x64.AppImage

# - Discord
wget -c -P ~/Downloads/programs https://discordapp.com/api/download?platform=linux&format=deb

# - Stacer
wget -c -P ~/Downloads/programs https://github.com/oguzhaninan/Stacer/releases/download/v1.1.0/Stacer-1.1.0-x64.AppImage

# - Chrome
wget -c -P ~/Downloads/programs https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# - VS Code
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update
sudo apt-get install code -y