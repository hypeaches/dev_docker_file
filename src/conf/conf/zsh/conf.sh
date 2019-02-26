#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)
echo "---------------script: $0"
echo "-------------work dir: ${SCRIPT_DIR}"

if [ -d ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh
fi
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
cp ${SCRIPT_DIR}/zshrc ~/.zshrc
