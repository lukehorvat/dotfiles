#!/usr/bin/env bash
# This script installs apps via Homebrew (and also updates existing installations).

# Ensure alternative formula repositories are accessible.
brew tap caskroom/cask || true
brew tap caskroom/versions || true
brew tap caskroom/fonts || true
brew tap homebrew/dupes || true

# Make sure Homebrew is fully updated.
brew update

# Update any already-installed formulae.
brew upgrade

# Install non-binary (i.e. packaged as source code) apps.
brew install direnv
brew install dos2unix
brew install ffmpeg --with-tools --with-fdk-aac --with-fontconfig --with-freetype --with-libass --with-libvorbis --with-libvpx --with-opus --with-x265
brew install giflossy # Needed for gifify.
brew install git
brew install gradle
brew install heroku-toolbelt
brew install imagemagick --with-fontconfig # Needed for gifify.
brew install node
brew install postgresql
brew install rbenv
brew install tree
brew install wget
brew install youtube-dl

# Install binary apps (using Homebrew Cask).
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
brew cask install openemu
brew cask install slack
brew cask install spotify
brew cask install steam
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Uninstall any outdated versions of apps that may be lingering.
brew cleanup --prune=10
brew cask cleanup --outdated

# Check that everything is okay. Probably not entirely necessary, but can't hurt...
brew doctor
