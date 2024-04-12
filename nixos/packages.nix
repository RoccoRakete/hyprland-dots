{ pkgs, inputs, ... }:

{
  # Allow unfree packages
  nixpkgs = {
    config = {

      ########## TODO: remove after electron update
      packageOverrides = pkgs: rec {
        electron_28 = pkgs.electron_28.overrideAttrs
          (oldAttrs: rec {

            buildCommand =
              let
                electron-unwrapped = pkgs.electron_28.passthru.unwrapped.overrideAttrs (oldAttrs: rec {
                  postPatch = builtins.replaceStrings [ "--exclude='src/third_party/blink/web_tests/*'" ] [ "--exclude='src/third_party/blink/web_tests/*' --exclude='src/content/test/data/*'" ] oldAttrs.postPatch;
                });
              in
              ''
                gappsWrapperArgsHook
                mkdir -p $out/bin
                makeWrapper "${electron-unwrapped}/libexec/electron/electron" "$out/bin/electron" \
                  "''${gappsWrapperArgs[@]}" \
                  --set CHROME_DEVEL_SANDBOX $out/libexec/electron/chrome-sandbox

                ln -s ${electron-unwrapped}/libexec $out/libexec
              '';
          });
        electron = pkgs.electron.overrideAttrs
          (oldAttrs: rec {
            buildCommand =
              let
                electron-unwrapped = pkgs.electron.passthru.unwrapped.overrideAttrs (oldAttrs: rec {
                  postPatch = builtins.replaceStrings [ "--exclude='src/third_party/blink/web_tests/*'" ] [ "--exclude='src/third_party/blink/web_tests/*' --exclude='src/content/test/data/*'" ] oldAttrs.postPatch;
                });
              in
              ''
                gappsWrapperArgsHook
                mkdir -p $out/bin
                makeWrapper "${electron-unwrapped}/libexec/electron/electron" "$out/bin/electron" \
                  "''${gappsWrapperArgs[@]}" \
                  --set CHROME_DEVEL_SANDBOX $out/libexec/electron/chrome-sandbox

                ln -s ${electron-unwrapped}/libexec $out/libexec
              '';
          });
        ########## TODO: remove after electron update
      };

      allowUnfree = true;
      permittedInsecurePackages = [
        #"electron-25.9.0"
        #"electron-19.1.9"
        #"nix-2.16.2"
      ];
    };
  };

  services.udev.packages = [ pkgs.swayosd ];

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

    # information
    firefox
    thunderbird
    brave
    bitwarden
    vesktop
    betaflight-configurator
    whatsapp-for-linux
    #kicad

    # office
    obsidian
    libreoffice-fresh
    nextcloud-client
    mailspring

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
    inputs.eza.packages.${system}.default
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
