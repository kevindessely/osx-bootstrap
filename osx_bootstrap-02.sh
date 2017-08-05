#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - 02"

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Bootstrapping complete - 02"
