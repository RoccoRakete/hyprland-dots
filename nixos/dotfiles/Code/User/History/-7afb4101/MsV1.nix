# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Package configurations
  environment.systemPackages = with pkgs; [
    
    #Commandline arguments
    (brave.override {
      commandLineArgs = [
        "--enable-features=TouchpadOverscrollHistoryNavigation"
        "--ozone-platform=wayland"
      ];
    })

#    (vscode.override {
#    commandLineArgs = [
#      "--enable-features=UseOzonePlatform" 
#        "--enable-features=WaylandWindowDecorations"
#        "--ozone-platform=wayland"
#      ];
##    })

    #Packages
    # gnome
    pkgs.gnome.gnome-bluetooth
    pkgs.gnome.gnome-settings-daemon
    pkgs.gnome.gnome-software
    pkgs.gnome.nautilus
    pkgs.glib
    pkgs.nautilus-open-any-terminal
    pkgs.libadwaita
    pkgs.gnome.gnome-control-center
    pkgs.gnome.gvfs
    pkgs.gnome.sushi
    pkgs.gnome.seahorse
    pkgs.gnome.gnome-tweaks
    pkgs.gtk4
    pkgs.gtk3

    # theming
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
    pkgs.neovim-unwrapped
    pkgs.neovide
    pkgs.fzf
    pkgs.vimPlugins.telescope-fzf-native-nvim
    pkgs.nodejs_21
    pkgs.libgcc
    pkgs.libgccjit
    pkgs.bintools-unwrapped
    pkgs.nixpkgs-fmt
    pkgs.python3

    # homelab
    pkgs.rpi-imager

    # information
    pkgs.firefox
    pkgs.thunderbird
    pkgs.brave
    pkgs.bitwarden
    pkgs.discord
    pkgs.betaflight-configurator

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
    pkgs.mate.mate-polkit
    pkgs.polkit
    pkgs.wget
    pkgs.kitty
    pkgs.brightnessctl
    pkgs.libnotify
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
    pkgs.wireguard-tools
    pkgs.wireguard-go
    pkgs.networkmanagerapplet
    pkgs.intel-gpu-tools
    pkgs.usbutils
    pkgs.btop
    pkgs.stress-ng
    pkgs.slurp
  ];

}
