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

install_dotfile "$dotfiles_dir/Brewfile" "$dest_dir/Brewfile"
install_dotfile "$dotfiles_dir/gitconfig" "$dest_dir/.gitconfig"
install_dotfile "$dotfiles_dir/gitignore_global" "$dest_dir/.gitignore_global"
install_dotfile "$dotfiles_dir/irbrc" "$dest_dir/.irbrc"
install_dotfile "$dotfiles_dir/npmrc" "$dest_dir/.npmrc"
install_dotfile "$dotfiles_dir/vimrc" "$dest_dir/.vimrc"
install_dotfile "$dotfiles_dir/zshrc" "$dest_dir/.zshrc"

printf "\nInstallation complete.\n"
