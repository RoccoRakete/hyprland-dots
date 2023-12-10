{ config, ... }:

{
  # neofetch
  home.file."${config.xdg.configHome}/neofetch" = {
    source = ./dotfiles/neofetch;
    recursive = true;
    enable = true;
  };

  # hyprland
  home.file."${config.xdg.configHome}/hypr" = {
    source = ./dotfiles/hypr;
    recursive = true;
    enable = true;
  };

  # gtklock
  home.file."${config.xdg.configHome}/neofetch" = {
    source = ./dotfiles/neofetch;
    recursive = true;
    enable = true;
  };

  # neovim
  home.file."${config.xdg.configHome}/hypr" = {
    source = ./dotfiles/hypr;
    recursive = true;
    enable = true;
  };
}
