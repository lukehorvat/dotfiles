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

# Homebrew.
install_dotfile "$dotfiles_dir/Brewfile" "$dest_dir/Brewfile"

# General dotfiles.
files="gitconfig gitignore_global irbrc npmrc vimrc zshrc"
for file in $files; do
  install_dotfile "$dotfiles_dir/$file" "$dest_dir/.$file"
done

printf "\nInstallation complete.\n"
