#!/usr/bin/env bash

mkdir -p ~/.config/fish
ln -sf ~/dotfiles/config.fish ~/.config/fish/

mkdir -p .config/mise
ln -sf ~/dotfiles/mise_config.toml ~/.config/mise/config.toml

if [[ "$(uname)" == "Darwin" ]] && command -v ghostty &> /dev/null; then
  ln -sf ~/dotfiles/ghostty.yml ~/Library/Application\ Support/com.mitchellh.ghostty/config
fi

mkdir -p ~/.config/yt-dlp
ln -sf ~/dotfiles/yt-dlp.config ~/.config/yt-dlp/config

ln -sf ~/dotfiles/.tigrc ~/
ln -sf ~/dotfiles/.tmux.conf ~/
ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml
