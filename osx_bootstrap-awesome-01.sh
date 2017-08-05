#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

echo "Starting bootstrapping - AWESOME 01"

echo "Installing fonts..."
brew tap caskroom/fonts
FONTS=(
    font-inconsolidata
    font-source-code-pro
    font-clear-sans
)
brew cask install ${FONTS[@]}

echo "Cleaning up..."
brew cask cleanup

echo "Installing ZSH Theme..."
sed -i -e 's%.*ZSH_THEME="robbyrussell".*%ZSH_THEME="honukai"%' $HOME/.zshrc
wget https://raw.githubusercontent.com/oskarkrawczyk/honukai-iterm/master/honukai.zsh-theme -O $HOME/.oh-my-zsh/themes/honukai.zsh-theme
cp -f $HOME/osx_bootstrap/awesome_config/iterm2/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist
defaults read com.googlecode.iterm2

echo "Installing The Ultimate VIM Configuration..."
git clone --depth=1 git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh

echo "Bootstrapping complete - AWESOME 01"
