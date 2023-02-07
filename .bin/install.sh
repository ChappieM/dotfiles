#!/bin/bash
cd `dirname $0`

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install -y fish

# シンボリックリンク作成
./ln.sh
