{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.ags.homeManagerModules.default
    ../../configs/user/styling.nix
    ../../configs/user/zsh.nix
    ./dotfiles.nix
    ./home-programs-desktop.nix
  ];

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  xdg.desktopEntries."org.gnome.Settings" = {
    name = "Settings";
    comment = "Gnome Control Center";
    icon = "org.gnome.Settings";
    exec = "env XDG_CURRENT_DESKTOP=gnome ${pkgs.gnome.gnome-control-center}/bin/gnome-control-center";
    categories = [ "X-Preferences" ];
    terminal = false;
  };

  home.file = { };
  home.sessionVariables = { };
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
