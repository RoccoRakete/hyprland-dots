{ pkgs, ... }:

{
  imports = [
  ];

  services = {
    #physlock = {
    #  enable = true;
    #  muteKernelMessages = true;
    #};
    fwupd.enable = true;
    tumbler.enable = true;
    gvfs.enable = true;
    gnome.core-utilities.enable = true;
    gnome.core-shell.enable = true;
    upower.enable = true;
    #xserver.desktopManager.gnome.enable = true;
    xserver.desktopManager.xfce.enable = true;
    xserver.desktopManager.plasma6 = {
      enable = false;
    };
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
  };
}
