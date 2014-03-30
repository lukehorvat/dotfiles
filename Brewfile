# This script installs apps via Homebrew (and also updates existing installations).
# Execute it by doing "brew bundle".

# Make sure Homebrew is fully updated first.
update

# Update any already-installed formulae.
upgrade

# Install non-binary (i.e. packaged as source code) apps.
install android-sdk
install git
install gradle
install heroku-toolbelt
install mysql
install node
install postgresql
install rbenv
install tree
install wget
install youtube-dl

# Install binary apps (using Homebrew-cask).
tap phinze/homebrew-cask || true
install brew-cask
cask install cyberduck
cask install dropbox
cask install firefox
cask install flash
cask install flux
cask install gitifier
cask install google-chrome
cask install hipchat
cask install intellij-idea-ce
cask install java
cask install sequel-pro
cask install spotify
cask install steam
cask install sublime-text
cask install utorrent
cask install virtualbox
cask install vlc

# Uninstall any outdated versions of apps that may be lingering.
cleanup

# Check that everything is okay. Probably not entirely necessary, but can't hurt...
doctor
