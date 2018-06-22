#!/bin/sh

sudo curl -L https://copr.fedorainfracloud.org/coprs/mcepl/vim8/repo/epel-7/mcepl-vim8-epel-7.repo -o /etc/yum.repos.d/mcepl-vim8-epel-7.repo

sudo yum update vim*

HOME=/home/ywoh/linux_script/vim

cd 
#git clone https://github.com/blueoyw/linux_script.git
#sudo yum install git ctags
#git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#cp -r ~/vim/yw.vim /usr/share/vim/vim74/colors
cp $HOME/yw.vim ~/.vimrc
vim +PluginInstall +qall
