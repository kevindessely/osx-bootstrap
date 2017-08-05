#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - 01"

echo "Install Xcode command-line tools"
xcode-select --install

echo "Bootstrapping complete - 01"
