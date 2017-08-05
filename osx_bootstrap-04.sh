#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - 04"

echo "Installing NVM aka Node Version Manager"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

source ~/.zshrc

echo "Installing latest stable NodeJS"
nvm install stable

echo "Installing Yarn"
brew install yarn

echo "Bootstrapping complete - 04"
