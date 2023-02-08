#!/bin/bash
cd $HOME

# setup
sudo apt install -y curl software-properties-common

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# Install StarShip
curl -sS https://starship.rs/install.sh | sh

# Install tmux
sudo apt install -y tmux

# 既存の.config, .bin内のファイルを取り込む
if [ -d "$HOME/.config/" ]; then
    mv --interactive $HOME/.config/* $HOME/dotfiles/.config/
fi
if [ -d "$HOME/.bin/" ]; then
    mv --interactive $HOME/.bin/* $HOME/dotfiles/.bin/
fi

# シンボリックリンク作成
sudo apt install -y python3-pip
pip install dotfiles
export PATH=$PATH:~/.local/bin

dotfiles -C "$HOME/dotfiles/.dotfilesrc" --sync --force

# Install fish plugins with fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish
sudo apt install -y fzf
fisher update
