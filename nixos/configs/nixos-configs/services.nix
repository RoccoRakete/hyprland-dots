{ pkgs, ... }:

{
  imports = [
  ];

  services = {
    blueman.enable = true;
    fwupd.enable = true;
    tumbler.enable = true;
    gvfs.enable = true;
    gnome.core-utilities.enable = true;
    gnome.core-shell.enable = true;
    upower.enable = true;
    xserver.desktopManager.xfce.enable = true;
    power-profiles-daemon.enable = false;
    xserver.displayManager.gdm.enable = true;
    gnome.gnome-keyring.enable = true;
    gnome.tracker.enable = true;
    gnome.tracker-miners.enable = true;
    xserver = {
      enable = true;
      xkb.layout = "de";
      xkb.variant = "";
      excludePackages = [ pkgs.xterm ];
    };
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    printing.enable = true;
    acpid.enable = true;
    flatpak.enable = true;
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
      };
    };
    udev.extraRules = ''
      # DFU (Internal bootloader for STM32 and AT32 MCUs)
      ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="0483", ATTRS{idProduct}=="df11", MODE="0664", GROUP="plugdev"
      ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="2e3c", ATTRS{idProduct}=="df11", MODE="0664", GROUP="plugdev"
    '';
  };
}
