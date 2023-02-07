#!/bin/bash
cd `dirname $0`

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# シンボリックリンクの作成
git clone https://github.com/jbernard/dotfiles /tmp/dotfiles-tool
./tmp/dotfiles-tool/bin/dotfiles -C "dotfiles/.dotfilesrc" --sync
