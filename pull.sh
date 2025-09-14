#!/bin/bash

# List of dotfiles / folders you want to copy
DOTFILES=(
  # Folders
  ".config/hypr"
  ".config/kitty"
  ".config/pipewire"
  ".config/rofi"
  ".config/swaync"
  ".config/wallpapers"
  ".config/waybar"
  ".config/fastfetch"
  # Files
  ".config/gamemode.ini"
  ".config/user-dirs.dirs"
  ".bashrc"
)

# Source directory (your home)
SRC="$HOME"

# Destination directory (where script is run + hostname)
DEST="$(pwd)/$(uname -n)"

echo "Copying dotfiles from $SRC to $DEST..."
cd "$SRC" || exit 1  # change to $HOME so rsync paths are relative
for file in "${DOTFILES[@]}"; do
    if [ -e "$file" ]; then
        echo "→ Copying $file"
        rsync -a --progress --relative "$file" "$DEST/"
    else
        echo "✗ Skipping $file (not found)"
    fi
done

echo "Done!"