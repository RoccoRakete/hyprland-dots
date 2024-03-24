{ config, ... }:

{
  # neofetch
  home.file."${config.xdg.configHome}/neofetch" = {
    source = ./home-dotfiles-laptop/neofetch;
    recursive = true;
    enable = true;
  };

  # hyprland
  home.file."${config.xdg.configHome}/hypr" = {
    source = ./home-dotfiles-laptop/hypr;
    recursive = true;
    enable = true;
  };

  # screenlock
  home.file."${config.xdg.configHome}/screenlock" = {
    source = ./home-dotfiles-laptop/screenlock;
    recursive = true;
    enable = true;
  };

  # ThemeSwitcher
  home.file."${config.xdg.configHome}/themeswitcher" = {
    source = ../../../cfg/themeswitcher;
    recursive = true;
    enable = true;
  };

  # waybar launchscript
  #home.file."${config.xdg.configHome}/waybar/launch.sh" = {
  #  source = ./home-dotfiles-laptop/waybar/launch.sh;
  #  recursive = true;
  #  enable = true;
  #};

  # waybar config
  #home.file."${config.xdg.configHome}/waybar/config.jsonc" = {
  #  source = ./home-dotfiles-laptop/waybar/config.jsonc;
  #  recursive = true;
  #  enable = true;
  #};

  # waybar themes
  #home.file."${config.xdg.configHome}/waybar/themes" = {
  #  source = ../../../styles/waybar;
  #  recursive = true;
  #  enable = true;
  #};

  # anyrun launchscript
  #home.file."${config.xdg.configHome}/anyrun/launch.sh" = {
  #  source = ./home-dotfiles-laptop/anyrun/launch.sh;
  #  recursive = true;
  #  enable = true;
  #};

  # anyrun themes
  #home.file."${config.xdg.configHome}/anyrun/themes" = {
  #  source = ../../../styles/anyrun;
  #  recursive = true;
  #  enable = true;
  #};
}
