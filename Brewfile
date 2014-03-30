# This script installs apps via Homebrew (and also updates existing installations).
# Execute it by doing "brew bundle".

# Make sure Homebrew is fully updated first.
update

# Update any already-installed formulae.
upgrade

# Install non-binary apps (i.e. packaged as source code).
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
cask install flux
cask install hipchat
cask install spotify
cask install steam
cask install sublime-text
cask install vlc

# Remove outdated versions of apps from the cellar.
cleanup

# Check that everything is okay. Probably not entirely necessary, but can't hurt...
doctor
