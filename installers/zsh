#!/bin/bash

echo "Do you want to install ZSH and related extensions and configure Oh My Zsh? (y/n): "
read install_zsh

if [ "$install_zsh" == "y" ]; then
  sudo pacman --noconfirm -S zsh
  yay -S --noconfirm -S zsh-theme-powerlevel10k-git
  sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  sudo git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting
  sudo git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete
  cp ./hyprland-dots/.zshrc ~/.zshrc
  echo "ZSH and related extensions have been installed and configured."
else
  echo "ZSH and related extensions have not been installed."
fi