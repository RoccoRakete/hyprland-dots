{ config, home-manager, pkgs, username, inputs, ... }:

let
  vars = import ./configs/variables.nix;
in

{
  imports =
    [
      ./configs/hardware-configuration.nix
      #./configs/thinkfan.nix
      ./configs/bluetooth.nix
      ./configs/tlp.nix
      ./nixos.nix
      ./packages.nix
    ];

  # Networking
  networking = {
    hostName = vars.desktop;
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  };
}
