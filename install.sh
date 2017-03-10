#!/bin/bash

###################
# basic
###################
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python
sudo easy_install pip

# tig
brew install tig

# ruby
brew install gpg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

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
brew install cmake
cp .vimrc ~/.vimrc
cp .tern-project ~/.tern-project
curl -fLo ~/.vim/colors/molokai.vim --create-dirs https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

###################
# powerline
###################
# install powerline
pip install --user git+git://github.com/powerline/powerlinepip 
pip install --user powerline-status

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
rm -f ~/.zcompdump;

####################
# reset terminal
####################
compinit

####################
# nodejs
####################
brew install node
sudo npm install -g n
sudo npm install -g typescript typings

###################
# For iTerm2 users, if symbols don't show up correctly, go to Preference > Profiles > Text, uncheck "Use a different font for non-ASCII text"
# Enjoy!!
###################
