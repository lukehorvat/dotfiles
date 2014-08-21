# This script installs apps via Homebrew (and also updates existing installations).
# Execute it by doing "brew bundle".

# Make sure Homebrew is fully updated first.
update

# Update any already-installed formulae.
upgrade

# Install non-binary (i.e. packaged as source code) apps.
install android-sdk
install ansible
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
tap caskroom/homebrew-cask || true
tap caskroom/versions || true
install brew-cask
cask install android-studio
cask install atom
cask install cyberduck
cask install dropbox
cask install firefox
cask install flash
cask install flux
cask install gimp
cask install gitifier
cask install google-chrome
cask install java
cask install ngrok
cask install sequel-pro
cask install slack
cask install spotify
cask install steam
cask install utorrent
cask install vagrant
cask install virtualbox
cask install vlc

# Uninstall any outdated versions of apps that may be lingering.
cleanup

# Check that everything is okay. Probably not entirely necessary, but can't hurt...
doctor
