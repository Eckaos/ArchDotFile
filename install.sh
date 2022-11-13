#!/bin/sh

INSTALL_PATH=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd -P)

#setup
sudo pacman --noconfirm -S xorg firefox alacritty rustup neovim pamixer mpd mpc picom tealdeer feh zsh numlockx os-prober ntfs-3g
rustup default stable
mkdir -p software/paru
# install paru
git clone https://aur.archlinux.org/paru.git ~/software/paru
(cd ~/software/paru; makepkg -si)
#install desktop environment
paru -S leftwm eww

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

paru -S lua-language-server-git clang
paru -S systemd-numlockontty
#install config
cp -r "$INSTALL_PATH/home/." ~

sudo os-prober
sudo grub-mkconfig -o /boot/grub/grub.cfg

sudo rm -r $INSTALL_PATH
