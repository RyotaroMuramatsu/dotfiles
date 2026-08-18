#!/usr/bin/env bash

set -euo pipefail

dotfiles_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
target="$HOME/.bashrc"
source="$dotfiles_dir/.bashrc"

if [[ -L "$target" && "$(readlink -- "$target")" == "$source" ]]; then
    exit 0
fi

if [[ -e "$target" || -L "$target" ]]; then
    backup="$target.backup.$(date +%Y%m%d%H%M%S)"
    mv -- "$target" "$backup"
    printf 'Backed up %s to %s\n' "$target" "$backup"
fi

ln -s -- "$source" "$target"
printf 'Linked %s to %s\n' "$target" "$source"