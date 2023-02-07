#!/bin/bash
cd $HOME

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# Install StarShip
sudo apt install -y curl
curl -sS https://starship.rs/install.sh | sh

# 既存の.config, .bin内のファイルを取り込む
if [ -d "$HOME/.config/" ]; then
    mv --interactive $HOME/.config/* $HOME/dotfiles/.config/
fi
if [ -d "$HOME/.bin/" ]; then
    mv --interactive $HOME/.bin/* $HOME/dotfiles/.bin/
fi

# シンボリックリンク作成
sudo apt install python3-pip
pip install dotfiles
export PATH=$PATH:~/.local/bin

dotfiles -C "$HOME/dotfiles/.dotfilesrc" --sync --force
