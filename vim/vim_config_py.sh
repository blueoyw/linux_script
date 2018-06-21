#!/bin/sh

HOME=/home/ywoh

#sudo yum install git ctags
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#cp -r ~/vim/yw.vim /usr/share/vim/vim74/colors
mkdir $HOME/.vim/syntax
cp -r $HOME/vim/yw.vim /usr/share/vim/vim74/colors
echo ":colorscheme yw" > $HOME/.vimrc
vim +PluginInstall +qall
cp -r $HOME/vim/python.vim ~/.vim/syntax/
cp -r $HOME/vim/pydiction ~/.vim
mv $HOME/.vim/pydiction/after ~/.vim
