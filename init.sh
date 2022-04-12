# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

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

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

nvm install --lts
nvm use --lts

# Clone public dotfiles
cd
git clone https://github.com/dmtrxw/public-dotfiles.git
rm -rf public-dotfiles/.git
mv public-dotfiles/{.,}* .
rm -rf public-dotfiles

source .zshrc

npm install -g \
typescript \
typescript-language-server \
nodemon \
pm2 \
neovim \
live-server \
json-server
