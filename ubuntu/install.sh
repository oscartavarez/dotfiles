#!/usr/bin/env bash
apt update -y && apt upgrade -y
apt install -y \
	ubuntu-restricted-extras \
	terminator libfuse2t64 vlc \
	timeshift tlp gnome-tweaks gnome-shell-extension-manager \
	obs-studio curl docker.io htop neofetch unrar git unzip \
	stacer ubuntu-restricted-addons tlp-rdw neovim \
	mysql-client xclip shutter flatpak gnome-software-plugin-flatpak \
	python3-pip python3-powerline

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub dev.k8slens.OpenLens

snap install --classic cool-retro-term
snap install --classic dbeaver-ce
snap install --classic code
snap install --classic helm
snap install --classic k9s

systemctl enable docker
systemctl start docker
systemctl enable tlp

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
curl -sS https://starship.rs/install.sh | sh

cat <<EOF
Add the following to your .bashrc file:

eval "$(starship init bash)"
EOF
