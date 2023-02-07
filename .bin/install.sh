#!/bin/bash
cd `dirname $0`

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# シンボリックリンクの作成
sudo apt install python3-pip
pip install dotfiles
export PATH=$PATH:~/.local/bin

cd ../../
dotfiles -C "dotfiles/.dotfilesrc" --sync
