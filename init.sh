#!/usr/bin/env bash
clear
echo "About to unleash the beast!"
echo

echo "Ensuring your /usr/local/bin directory is writable by user..."
sudo chown -R $(whoami) /usr/local/bin

echo

# wget
brew install wget

# DNS
brew cask install dnscrypt

# Core Apps
brew cask install iterm2
brew cask install java
brew cask install vlc
brew cask install gimp

# Browsers
brew cask install google-chrome
brew cask install firefox

# Communication
# brew cask install slack

# Dev Tools
brew install git
# brew cask install visual-studio-code
# brew cask install insomnia
brew cask install postman
brew cask install macdown
brew install heroku-toolbelt
brew cask install expo-xde
heroku update
brew install docker
brew cask install postgres

# Node.js
brew install node
brew install postgres
brew install redis
brew install mongodb
brew install yarn

# PHP
brew install php

# Android Development
brew cask install android-sdk
brew cask install android-studio
brew cask install vysor

# NPM Global Packages
npm install -g sequelize-cli
npm install -g nodemon
npm install -g pm2
npm install -g create-react-app
npm install -g create-react-native-app
npm install -g react-native-cli
npm install -g mocha
npm install -g jest
npm install -g firebase-tools
npm install -g aws-sdk
npm install -g @vue/cli
npm install -g express-generator
npm install -g exp

# zsh and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Change default shell to zsh
chsh -s $(which zsh)

# Cleanup
brew cleanup

echo
echo "Done!"
