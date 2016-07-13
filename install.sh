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
# vim
####################

