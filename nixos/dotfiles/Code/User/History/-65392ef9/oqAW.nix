# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, home-manager, ... }:

{
    # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Packages
  environment.systemPackages = with pkgs; [

    # gnome
    pkgs.mate.mate-polkit
    pkgs.gnome.gnome-bluetooth
    pkgs.gnome.gnome-settings-daemon
    pkgs.gnome.gnome-software
    pkgs.gnome.nautilus
    pkgs.glib
    pkgs.nautilus-open-any-terminal
    pkgs.libadwaita
    pkgs.gnome.gnome-control-center
    pkgs.gnome.gnome-shell
    pkgs.gnome.gvfs
    pkgs.gnome.sushi
    pkgs.gnome.seahorse
    pkgs.gnome.gnome-tweaks
    pkgs.gtk4
    pkgs.gtk3

    # theming
    pkgs.bibata-cursors
    pkgs.neofetch
    pkgs.swww
    pkgs.pywal
    pkgs.imagemagick
    pkgs.nwg-look
    pkgs.hyprpicker
    pkgs.gtklock
    pkgs.gtklock-userinfo-module

    # code
    pkgs.vscode
    pkgs.sassc
    pkgs.neovim
    pkgs.neovide
    pkgs.fzf
    pkgs.vimPlugins.telescope-fzf-native-nvim
    pkgs.nodejs_21
    pkgs.libgcc

    # information
    pkgs.firefox
    pkgs.thunderbird
    pkgs.discord

    # office
    pkgs.obsidian
    pkgs.libreoffice-fresh
    pkgs.nextcloud-client

    # media
    pkgs.obs-studio
    pkgs.wf-recorder
    pkgs.grimblast
    pkgs.wayshot
    pkgs.spotify

    # system
    pkgs.polkit
    pkgs.wget
    pkgs.kitty
    pkgs.brightnessctl
    pkgs.inotify-tools
    pkgs.pavucontrol
    pkgs.bluez
    pkgs.bluez-tools
    pkgs.wl-clip-persist
    pkgs.mission-center
    pkgs.wl-clipboard
    pkgs.swayidle
    pkgs.sway-audio-idle-inhibit
    pkgs.fwupd
    pkgs.xdg-desktop-portal
    pkgs.distrobox
    pkgs.nixos-icons
    pkgs.libsecret
  ];

}
