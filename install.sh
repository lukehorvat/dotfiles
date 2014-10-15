#!/usr/bin/env bash

printf "Installing dotfiles...\n\n"

dotfiles_dir="$(pwd)"
backups_dir="$HOME/dotfiles_old/"

set -e

rm -rf "$backups_dir"
mkdir -p "$backups_dir"

install_dotfile() {
  local source=$1
  local dest=$2

  if [ -f "$dest" ] || [ -d "$dest" ]; then
    mv "$dest" "$backups_dir"
    echo "Moved existing $dest to $backups_dir"
  fi

  ln -s "$source" "$dest"
  echo "Linked $source to $dest"
}

install_dotfile "$dotfiles_dir/.atom" "$HOME/.atom"
install_dotfile "$dotfiles_dir/.gitconfig" "$HOME/.gitconfig"
install_dotfile "$dotfiles_dir/.gitignore_global" "$HOME/.gitignore_global"
install_dotfile "$dotfiles_dir/.irbrc" "$HOME/.irbrc"
install_dotfile "$dotfiles_dir/.npmrc" "$HOME/.npmrc"
install_dotfile "$dotfiles_dir/.vimrc" "$HOME/.vimrc"
install_dotfile "$dotfiles_dir/.zshrc" "$HOME/.zshrc"
install_dotfile "$dotfiles_dir/brew.sh" "$HOME/brew.sh"

printf "\nInstallation complete.\n"
