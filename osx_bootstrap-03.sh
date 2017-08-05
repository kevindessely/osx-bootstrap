#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - 03"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

CASKS=(
    1password
    alfred
    appcleaner
    atom
    cheatsheet
    docker
    google-chrome
    iterm2
    sourcetree
    moom
    spotify
    sublime-text
    tunnelblick
    vlc
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Cleaning up..."
brew cask cleanup

echo "Bootstrapping complete - 03"
