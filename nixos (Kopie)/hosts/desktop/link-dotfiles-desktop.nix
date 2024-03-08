{ config, ... }:

{
  # neofetch
  home.file."${config.xdg.configHome}/neofetch" = {
    source = ./home-dotfiles-desktop/neofetch;
    recursive = true;
    enable = true;
  };

  # Hyprland
  home.file."${config.xdg.configHome}/hypr" = {
    source = ./home-dotfiles-desktop/hypr;
    recursive = true;
    enable = true;
  };

  # gtklock
  home.file."${config.xdg.configHome}/gtklock" = {
    source = ../../global-dotfiles/gtklock;
    recursive = true;
    enable = true;
  };

  # neovim
  home.file."${config.xdg.configHome}/nvim" = {
    source = ../../global-dotfiles/nvim;
    recursive = true;
    enable = true;
  };
}

