#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi
if [ -f ~/.vim/vimrc ]; then
    mv ~/.vim/vimrc ~/.vim/vimrc.bak
fi
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ${SCRIPT_DIR}/vimrc_plugins ~/.vim/vimrc
echo "Waiting for vim vundle plugins processed..."
vim +PluginInstall +qa
echo "vim vundle plugins processed..."

rm -rf ~/.vim/vimrc
cp ${SCRIPT_DIR}/vimrc ~/.vim/vimrc
