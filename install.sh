#!/usr/bin/env bash

printf "Installing dotfiles...\n\n"

dotfiles_dir="$(pwd)"
dest_dir=$HOME
backups_dir="$dest_dir/dotfiles_old/"

set -e

mkdir -p "$backups_dir"

install_dotfile() {
  local source=$1
  local dest=$2

  if [ -f "$dest" ] || [ -d "$dest" ]; then
    mv "$dest" "$backups_dir"
    echo " > Moved existing $dest to $backups_dir"
  fi

  ln -s "$source" "$dest"
  echo " ~ Linked $source to $dest"
}

# Sublime Text 2.
if [ "$(uname -s)" = "Darwin" ]; then
  sublime_dir="$HOME/Library/Application Support/Sublime Text 2"
elif [ "$(uname -s)" = "Linux" ]; then
  sublime_dir="$HOME/.config/sublime-text-2"
else
  echo "Unknown operating system."
  exit 1
fi
install_dotfile "$dotfiles_dir/sublime-settings"     "$sublime_dir/Packages/User/Preferences.sublime-settings"
install_dotfile "$dotfiles_dir/sublime-osx-keymap"   "$sublime_dir/Packages/User/Default (OSX).sublime-keymap"
install_dotfile "$dotfiles_dir/sublime-linux-keymap" "$sublime_dir/Packages/User/Default (Linux).sublime-keymap"

# General dotfiles.
files="gitconfig gitignore_global irbrc vimrc"
for file in $files; do
  install_dotfile "$dotfiles_dir/$file" "$dest_dir/.$file"
done

printf "\nInstallation complete.\n"
