#!/bin/bash

###################
# basic
###################
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# python
sudo easy_install pip

# utils
brew install tig
brew install lcov
brew install yq

git config --global --add user.email $GIT_EMAIL
git config --global --add user.name $GIT_USER

# ruby
brew install gpg
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# java
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew install gradle

# go
mkdir -p ~/gitRepository/go-projects
brew install go

# tmux
brew install tmux
cp .tmux.conf ~/.tmux.conf

###################
# zsh
###################
# powerline
pip install --user git+git://github.com/powerline/powerline
pip install --user powerline-status

git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts

# zsh
brew install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
brew install zsh-completions
chsh -s /bin/zsh

cp .zshrc ~/.zshrc
rm -f ~/.zcompdump;
# For iTerm2 users, if symbols don't show up correctly
# go to Preference > Profiles > Text
# uncheck "Use a different font for non-ASCII text"

# restart terminal
compinit
compaudit | xargs chmod g-w,o-w

####################
# nodejs
####################
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh | bash
cp .nvm.default-packages ~/.nvm/default-packages
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc
source ~/.zshrc

nvm install stable
brew install yarn

####################
# vim
####################
brew install macvim
brew install cmake
cp .vimrc ~/.vimrc
cp .tern-project ~/.tern-project
curl -fLo ~/.vim/colors/molokai.vim --create-dirs https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

####################
# EMScripten
####################
git clone https://github.com/emscripten-core/emsdk.git ~/tools/emsdk
cd ~/tools/emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
# follow the console to add ENV variables

###################
# Enjoy!!
###################
