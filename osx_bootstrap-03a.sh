#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - 03a"

echo "updating brew recipes"
brew update

PACKAGES=(
    openshift-cli
    vim
    wget
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Bootstrapping complete - 03a"
