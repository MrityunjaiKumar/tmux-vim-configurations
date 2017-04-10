#!/bin/bash
sudo apt-get install vim tmux zsh git python-pip -y 
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle 
cp .tmux.conf ~/
cp .vimrc ~/
vim +PluginInstall +qall
#wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sudo zsh
export LC_ALL=C
su -c 'pip install git+git://github.com/powerline/powerline'
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.fonts/ && mv PowerlineSymbols.otf ~/.fonts/
fc-cache -vf ~/.fonts
mkdir -p ~/.config/fontconfig/conf.d/ && mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
#chsh -s `which zsh`
#cp .zshrc ~/
