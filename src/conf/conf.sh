#!/bin/bash

SCRIPT_DIR=$(cd $(dirname ${BASH_SOURCE[0]}); pwd)

# 配置vim
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
cp ${SCRIPT_DIR}/vim/vimrc_plugins ~/.vim/vimrc
echo "Waiting for vim vundle plugins processed..."
vim +PluginInstall +qa
echo "vim vundle plugins processed..."

rm -rf ~/.vim/vimrc
cp ${SCRIPT_DIR}/vim/vimrc ~/.vim/vimrc

# 配置zsh
if [ -d ~/.oh-my-zsh ]; then
    rm -rf ~/.oh-my-zsh
fi
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.zshrc.bak
fi
cp ${SCRIPT_DIR}/zsh/zshrc ~/.zshrc

# 配置sshd
mkdir /var/run/sshd
sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
mkdir /root/.ssh
