#!/bin/zsh

# Disable keyboard accents
defaults write -g ApplePressAndHoldEnabled -bool false

# Install CLI Tools
brew install \
ack \
coreutils \
fzf \
git \
neovim \
ripgrep \
tmux \
tree \
vim \
wget

# Install GUIs
brew install --cask \
android-file-transfer \
discord \
firefox \
google-chrome \
iterm2 \
obs \
postico \
postman \
qbittorrent \
slack \
spotify \
the-unarchiver \
visual-studio-code \
vlc

# Setup tmux
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
nvm install --lts
nvm use --lts

# Clone personal public dotfiles
cd
git clone https://github.com/dmtrxw/public-dotfiles.git
rm -rf public-dotfiles/.git/
cp -r public-dotfiles/.* .
rm -rf public-dotfiles

npm install -g \
json-server \
neovim \
nodemon \
pm2 \
prettier \
serve \
typescript-language-server \
typescript
