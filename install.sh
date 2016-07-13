#!/bin/bash

###################
# basic
###################
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python
sudo easy_install pip

###################
# tmux
###################
brew install tmux
cp .tmux.conf ~/.tmux.conf

####################
# vim
####################
brew install vim
brew install macvim
cp .vimrc ~/.vimrc
cp .tern-project ~/.tern-project
vim +PluginInstall +qall
brew install cmake
~/.vim/bundle/YouCompleteMe/install.py --clang-completer --tern-completer

###################
# powerline
###################
# install powerline
p install --user git+git://github.com/powerline/powerlinepip install --user powerline-status

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

####################
# zsh
####################
brew install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
brew install zsh-completions
chsh -s /bin/zsh

cp .zshrc ~/.zshrc
rm -f ~/.zcompdump; compinit

####################
# nodejs
####################
brew install node
sudo npm install -g n
sudo npm install -g typescript typings
