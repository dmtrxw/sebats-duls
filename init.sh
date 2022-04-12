#!/bin/zsh

# Install CLI Tools
brew install \
wget \
git \
coreutils \
vim \
neovim \
tmux \
fzf \
pygments \
ack \
watchman

# Install GUIs
brew install --cask \
iterm2 \
vlc \
google-chrome \
firefox \
spotify \
the-unarchiver \
slack \
postman \
karabiner-elements \
qbittorrent \
android-studio \
visual-studio-code \
sublime-text \
zoomus \
android-file-transfer \
discord

# Setup tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

# Clone public dotfiles
cd
git clone https://github.com/dmtrxw/public-dotfiles.git
rm -rf public-dotfiles/.git/
cp -r public-dotfiles/.* .
rm -rf public-dotfiles

npm install -g \
typescript \
typescript-language-server \
nodemon \
pm2 \
neovim \
live-server \
json-server

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
