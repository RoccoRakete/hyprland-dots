# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, home-manager, nixos-icons, options, lib, ... }:

let
  inherit (pkgs) nixos-icons;
in

{
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
    plymouth.theme = "spinner";
    plymouth.logo = "${nixos-icons}/share/icons/hicolor/48x48/apps/nix-snowflake-white.png";
  };

  services.udev.extraRules = ''
    SUBSYSTEMS=="usb", ATTRS{idVendor}=="(0483)", ATTRS{idProduct}=="(3256)", GROUP="users", MODE="0777"
  '';

  # Networking
  networking = {
    hostName = "OptiPlex3060";
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
  };

  services = {
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
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
    bluetooth = {
      settings = {
        General = {
          ControllerMode = "dual";
          FastConnectable = "true";
          Experimental = "true";
        };
        Policy = {
          AutoEnable = "true";
        };
      };
    };
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
      packages = with pkgs; [
      ];
    };
  };

  # Installed Fonts
  fonts.packages = with pkgs; [
    (nerdfonts.override {
      fonts = [
        "Ubuntu"
        "UbuntuMono"
        "Hermit"
      ];
    })
  ];

  system.stateVersion = "23.05";

}
