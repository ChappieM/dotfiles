#!/bin/bash
cd `dirname $0`

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish

# シンボリックリンクの作成
pip install dotfiles
cd ../../
dotfiles -C "dotfiles/.dotfilesrc" --sync
