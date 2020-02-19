#!/usr/bin/env bash
sudo chown -R $(whoami) /usr/local/bin

brew install wget
brew install git
brew install coreutils
brew install vim
brew install tmux
brew install fzf
brew install pygments
brew install ack
brew install watchman

brew cask install macvim
brew cask install iterm2
brew cask install vlc
brew cask install google-chrome
brew cask install firefox
brew cask install spotify
brew cask install the-unarchiver
brew cask install slack
brew cask install postman
brew cask install karabiner-elements
brew cask install qbittorrent
brew cask install android-studio

npm install -g @vue/cli
npm install -g create-react-app
npm install -g expo-cli
