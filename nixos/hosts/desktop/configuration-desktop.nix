{ lib, ... }:

let
  vars = import ../../variables.nix;
in

{
  imports =
    [
      ./hardware-configuration-desktop.nix
      ../../configs/global-configs/services.nix
      ../../configs/global-configs/programs.nix
      ../../configs/global-configs/bluetooth.nix
      ../../configs/global-configs/tlp.nix
      ../../nixos.nix
      ../../packages.nix
    ];

  # Networking
  networking = {
    hostName = vars.desktop;
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  };
  #networking.interfaces.enp1s0.useDHCP = true;
  #networking.interfaces.br0.useDHCP = false;
  #networking.bridges = {
  #  "br0" = {
  #    interfaces = [ "enp1s0" ];
  #  };
  #};
}
