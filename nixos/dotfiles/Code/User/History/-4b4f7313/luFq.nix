{ pkgs, nixos-icons, options, lib, ... }:

let
  inherit (pkgs) nixos-icons;
in

{
  #environment.sessionVariables.NIXOS_OZONE_WL = "1";
  environment.pathsToLink = [ "/share/zsh" ];


  nix = {
    optimise.automatic = true;
    gc = {
      automatic = true;
      dates = "daily";
      options = "--delete-older-than 7d";
    };
    settings = {
      experimental-features = "nix-command flakes";
      auto-optimise-store = true;
    };
  };

  # Bootloader.
  boot = {
    initrd.systemd.enable = true;
    tmp.cleanOnBoot = true;
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [ "quiet" "nosgx" ];
    loader = {
      timeout = 0;
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
    plymouth.enable = true;
    plymouth.theme = "bgrt";
    plymouth.logo = "${nixos-icons}/share/icons/hicolor/48x48/apps/nix-snowflake-white.png";
  };

  # Networking
  #nixosConfigurations.myhostname = "ThinkPad";
  networking = {
    hostName = "OptiPlex3060";
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  };

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Locale Settings
  i18n.extraLocaleSettings = {
    defaultLocale = "de_DE.UTF-8";
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Configure console keymap
  console.keyMap = "de";

  programs = {
    thunar = {
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
      enable = true;
    };
    dconf.enable = true;
    zsh.enable = true;
    hyprland.enable = true;
    direnv.enable = true;
  };

  services = {
    fprintd.enable = true;
    tumbler.enable = true;
    gvfs.enable = true;
    gnome.core-utilities.enable = true;
    gnome.core-shell.enable = true;
    upower.enable = true;
    #xserver.desktopManager.gnome.enable = true;
    xserver.displayManager.gdm.enable = true;
    gnome.gnome-keyring.enable = true;
    gnome.tracker.enable = true;
    gnome.tracker-miners.enable = true;
    xserver = {
      enable = true;
      layout = "de";
      xkbVariant = "";
      excludePackages = [ pkgs.xterm ];
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    printing.enable = true;
    flatpak.enable = true;
  };

  hardware = {
    pulseaudio.enable = false;
    opengl.extraPackages = with pkgs; [
      intel-compute-runtime
      intel-media-driver
      vaapiIntel
    ];
  };

  # virtualisation
  virtualisation = {
    podman.enable = true;
    libvirtd.enable = true;
  };

  security.pam.services.gtklock = { };
  security.polkit.enable = true;

  # Enable sound with pipewire.
  sound.enable = true;
  security.rtkit.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    defaultUserShell = pkgs.zsh;
    users.martin = {
      isNormalUser = true;
      description = "Martin";
      extraGroups = [ "networkmanager" "wheel" "dialout" ];
    };
  };

  # Installed Fonts
  fonts = {
    enableDefaultPackages = true;
    fontDir.enable = true;
    packages = with pkgs; [
      (nerdfonts.override {
        fonts = [
          "Ubuntu"
          "UbuntuMono"
          "Hermit"
        ];
      })
    ];
  };

  system.stateVersion = "23.05";
}
