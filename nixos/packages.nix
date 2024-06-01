{ pkgs, inputs, ... }:
#let
#  myOverlays = import ./overlays/betaflight-configurator.nix;
#in
{

  #nixpkgs.overlays = [ myOverlays ];

  # Allow unfree packages
  nixpkgs = {
    config = {
      allowUnfree = true;
      permittedInsecurePackages = [
        #"electron-25.9.0"
        #"electron-19.1.9"
        #"nix-2.16.2"
      ];
      overlays = [
      ];
    };
  };

  services.udev.packages = [ pkgs.swayosd ];

  # Package configurations
  environment.systemPackages = with pkgs; [

    #(
    #  pkgs.runCommand
    #    "brave-wrapped"
    #    { nativeBuildInputs = [ pkgs.makeWrapper ]; }
    #    ''
    #      makeWrapper ${lib.getExe pkgs.brave} $out/bin/brave \
    #        --append-flags "--enable-features=TouchpadOverscrollHistoryNavigation" \
    #        --append-flags "--password-store=basic" \
    #        --append-flags "--enable-chrome-browser-cloud-management"
    #    ''
    #)

    #Commandline arguments
    (
      brave.override {
        commandLineArgs = [
          "--enable-features=TouchpadOverscrollHistoryNavigation"
          "--password-store=basic"
        ];
      }
    )



    #Packages
    # gnome
    gnome.gnome-bluetooth
    gnome.gnome-settings-daemon
    gnome.gnome-software
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
    inputs.walker.packages.${system}.default
    inputs.anyrun.packages.${system}.default
    swaynotificationcenter
    swayosd
    wlogout
    neofetch
    swww
    pywal
    imagemagick
    nwg-look
    hyprpicker
    gradience
    kitty-themes

    # code
    yarn
    nodejs_22
    stylua
    codespell
    isort
    black
    prettierd
    shfmt
    jsbeautifier
    lua-language-server
    dart-sass
    bun
    neovide
    fzf
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
    jq
    nil
    rustfmt
    java-language-server
    jsonfmt
    luaformatter
    typescript
    meson
    vala
    cmake
    pkg-config
    uncrustify
    #vala-language-server
    #neovim-unwrapped

    # homelab
    rpi-imager
    super-slicer-beta
    orca-slicer

    # information
    lutris
    openra
    firefox
    thunderbird
    brave
    bitwarden
    vesktop
    #betaflight-configurator
    #BlHeliSuite32xl
    #betaflightConfigurator
    whatsapp-for-linux
    #kicad

    # office
    obsidian
    libreoffice-fresh
    nextcloud-client
    mailspring
    localsend

    # media
    obs-studio
    wf-recorder
    grimblast
    wayshot
    spotify
    gimp
    gthumb
    jellyfin-media-player
    heroic

    # system
    clipse
    proxmox-backup-client
    inputs.eza.packages.${system}.default
    inputs.hypridle.packages.${system}.default
    pika-backup
    envsubst
    grim
    deadnix
    mesa-demos
    mesa
    nitch
    coreutils
    powerstat
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
    wl-clipboard
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
    wev
    sabnzbd
    wineWowPackages.waylandFull
    wlr-randr
    powertop
    poweralertd
    pulseaudio
    inputs.nh.packages.${system}.default
    satty
  ];
}
