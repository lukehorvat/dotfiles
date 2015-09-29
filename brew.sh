#!/usr/bin/env bash
# This script installs apps via Homebrew (and also updates existing installations).

# Ensure alternative formula repositories are accessible.
brew tap caskroom/homebrew-cask || true
brew tap caskroom/versions || true
brew tap homebrew/dupes || true

# Make sure Homebrew is fully updated.
brew update

# Update any already-installed formulae.
brew upgrade --all

# Install non-binary (i.e. packaged as source code) apps.
brew install direnv
brew install dos2unix
brew install git
brew install gradle
brew install heroku-toolbelt
brew install node
brew install postgresql
brew install rbenv
brew install tree
brew install wget
brew install youtube-dl

# Install binary apps (using Homebrew-cask).
brew install brew-cask
brew cask install atom
brew cask install cyberduck
brew cask install dropbox
brew cask install firefox
brew cask install flash
brew cask install flux
brew cask install gimp
brew cask install google-chrome
brew cask install java
brew cask install limechat
brew cask install ngrok
brew cask install slack
brew cask install snes9x
brew cask install spotify
brew cask install steam
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Uninstall any outdated versions of apps that may be lingering.
brew cleanup

# Check that everything is okay. Probably not entirely necessary, but can't hurt...
brew doctor
