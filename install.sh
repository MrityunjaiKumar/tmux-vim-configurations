#!/bin/bash
apt-get install vim git -y 
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
cp .tmux.conf ~/
cp .vimrc ~/
vim +PluginInstall +qall
