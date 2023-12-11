#Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

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
    gnome.gnome-bluetooth
    gnome.gnome-settings-daemon
    gnome.gnome-software
    gnome.nautilus
    glib
    nautilus-open-any-terminal
    libadwaita
    gnome.gnome-control-center
    gnome.gvfs
    gnome.sushi
    gnome.seahorse
    gnome.gnome-tweaks
    gtk4
    gtk3

    # theming
    neofetch
    swww
    pywal
    imagemagick
    nwg-look
    hyprpicker
    gtklock
    gtklock-userinfo-module

    # code
    sassc
    neovim-unwrapped
    neovide
    fzf
    vimPlugins.telescope-fzf-native-nvim
    nodejs_21
    libgcc
    libgccjit
    bintools-unwrapped
    nixpkgs-fmt
    python3
    gcc-unwrapped
    gnumake
    gccgo
    cargo

    # homelab
    rpi-imager

    # information
    firefox
    thunderbird
    brave
    bitwarden
    discord
    betaflight-configurator

    # office
    obsidian
    libreoffice-fresh
    nextcloud-client
    anydesk
    remmina

    # media
    obs-studio
    wf-recorder
    grimblast
    wayshot
    spotify

    # system
    mate.mate-polkit
    polkit
    wget
    kitty
    brightnessctl
    libnotify
    inotify-tools
    pavucontrol
    bluez
    bluez-tools
    wl-clip-persist
    mission-center
    wl-clipboard
    swayidle
    sway-audio-idle-inhibit
    fwupd
    xdg-desktop-portal
    distrobox
    nixos-icons
    libsecret
    wireguard-tools
    wireguard-go
    networkmanagerapplet
    intel-gpu-tools
    usbutils
    btop
    stress-ng
    slurp
    playerctl
    unzip
  ];

}
