#!/usr/bin/env bash
clear
echo "About to unleash the beast!"
echo

echo "Ensuring your /usr/local/bin directory is writable by user..."
sudo chown -R $(whoami) /usr/local/bin

echo

cd ~

brew install wget
brew cask install iterm2
brew cask install java
brew cask install vlc
brew cask install gimp
brew cask install google-chrome
brew cask install firefox

brew install git
brew install vim
brew install tmux
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

brew cask install postman
brew cask install macdown
brew cask install karabiner-elements
brew cask install postico
brew cask install qbittorrent
brew cask install sequel-pro
brew cask install spotify
brew cask install tunnelbear
brew cask install whatsapp

brew install heroku
heroku update

brew install docker
brew install node
brew install postgres
brew install redis
brew install mongodb
brew install yarn
brew install php

brew cask install android-sdk
brew cask install android-studio
brew cask install vysor
brew cask install expo-xde

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

# brew cask install slack
# brew cask install visual-studio-code
# brew cask install insomnia

# zsh and oh-my-zsh
brew install zsh zsh-completions
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Change default shell to zsh
chsh -s $(which zsh)

# Cleanup
brew cleanup

echo
echo "Done!"
