#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - AWESOME 02"

echo "Disabling press-and-hold for keys in favor of a key repeat"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

echo "Setting a blazingly fast keyboard repeat rate (ain't nobody got time fo special chars while coding!)"
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

echo "Disabling workspace auto-switching"
defaults write com.apple.dock workspaces-auto-swoosh -bool false
killall Dock

echo "Enable tap to click for current user and on login screen"
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Bootstrapping complete - AWESOME 02"
