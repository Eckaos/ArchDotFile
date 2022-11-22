#/bin/sh

mkdir -p ~/software/paru/
git clone https://aur.archlinux.org/paru.git ~/software/paru
cd ~/software/paru
makepkg -si
cd
