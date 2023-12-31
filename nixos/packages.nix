#Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ pkgs, inputs, ... }:

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
    gradience
    swaylock-effects
    kitty-themes

    # code
    sassc
    neovide
    fzf
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
    ripgrep
    fd
    emacs
    jq
    nil

    # homelab
    rpi-imager
    super-slicer-beta

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
    sauerbraten
    gimp
    gthumb

    # system
    coreutils
    mate.mate-polkit
    polkit
    wget
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
    sway-audio-idle-inhibit
    wev
    sabnzbd
    wineWowPackages.waylandFull
    inputs.nix-software-center.packages.${system}.nix-software-center
    inputs.nixos-conf-editor.packages.${system}.nixos-conf-editor
    nixos-generators
    wlr-randr
    powertop
  ];

}
