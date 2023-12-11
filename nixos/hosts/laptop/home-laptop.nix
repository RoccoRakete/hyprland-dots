{ inputs, config, pkgs, ... }:

let
  inherit (pkgs) nixos-icons;
  vars = import ../../variables.nix;
in

{
  imports = [
    ../../configs/home-configs/styling.nix
    ../../configs/home-configs/zsh.nix
    ./link-dotfiles-laptop.nix
    ./home-programs-laptop.nix
  ];

  home.username = vars.user1;
  home.homeDirectory = vars.homeDirectoryUser1;

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  dconf.settings = {
    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };
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

  home.stateVersion = "23.11";
}
