#!/bin/bash

# Install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish


# シンボリックリンクの作成
DOT_FILES=".gitconfig .zshrc .zprofile"
for file in $DOT_FILES
do
    ln -sf `pwd`/$file ~
done