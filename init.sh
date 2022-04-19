#!/bin/zsh

# Disable keyboard accents
defaults write -g ApplePressAndHoldEnabled -bool false

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
watchman \
efm-langserver \
ripgrep

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
qbittorrent \
android-studio \
visual-studio-code \
sublime-text \
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

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

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
emmet-ls \
nodemon \
pm2 \
neovim \
live-server \
json-server \
prettier

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
