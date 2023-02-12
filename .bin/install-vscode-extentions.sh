#!/bin/bash

# 予め .config/Code/extensions に拡張機能のリストを格納しておく

cd $(dirname $0)

# Visual Studio Code :: Package list
FILE_NAME=../.config/Code/extensions

while read LINE
do
 code --install-extension ${LINE}
done < ${FILE_NAME}
