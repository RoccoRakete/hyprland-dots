{ config, pkgs, ... }:

{
  home.username = "martin";
  home.homeDirectory = "/home/martin";

  home.packages = [
    pkgs.htop
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
