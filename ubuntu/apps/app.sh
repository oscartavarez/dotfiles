#!/usr/bin/env bash
apt update -y && apt upgrade -y
apt install -y \
	ubuntu-restricted-extras \
	terminator libfuse2t64 vlc \
	timeshift tlp gnome-tweaks gnome-shell-extension-manager \
	obs-studio curl docker.io htop neofetch unrar git unzip \
	stacer ubuntu-restricted-addons tlp-rdw neovim k9s open-lens mysql-client

snap install cool-retro-term dbeaver-ce code helm nvim shutter

systemctl enable docker
systemctl start docker
systemctl enable tlp

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
