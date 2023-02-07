#!/bin/bash
cd $HOME

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# シンボリックリンク作成
sudo apt install python3-pip
pip install dotfiles
export PATH=$PATH:~/.local/bin

dotfiles -C "$HOME/dotfiles/.dotfilesrc" --add "$HOME/.config"
dotfiles -C "$HOME/dotfiles/.dotfilesrc" --sync --force
