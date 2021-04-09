#!/bin/bash
set -e

# ----- PPAS -----
# sudo add-apt-repository -y ppa:ricotz/docky -y # ppa for plank

sudo apt-get update

# - plank
# sudo apt-get install plank
# It's recommended to use "dash-to-dock" extension instead of plank

# - dracula-theme/gnome-terminal
git clone https://github.com/dracula/gnome-terminal ~/Downloads/gnome-terminal
cd ~/Downloads/gnome-terminal && ./install.sh
rm -rf ~/Downloads/gnome-terminal

# - dracula-theme/gedit
wget https://raw.githubusercontent.com/dracula/gedit/master/dracula.xml
mv dracula.xml ~/.local/share/gedit/styles/

# - change lockscreen theme.
# WARNING: this only works if you use gdm and a ubuntu 20.10(or longer) based ditribution
sudo apt install make gcc libgtk-3-dev libpolkit-gobject-1-dev -y
git clone https://github.com/thiggy01/gdm-background.git && cd gdm-background
make && sudo make install
