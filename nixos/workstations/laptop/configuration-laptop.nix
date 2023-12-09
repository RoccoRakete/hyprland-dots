{ config, home-manager, lib, pkgs, username, inputs, ... }:

let
  vars = import ../../configs/variables.nix;
in

{
  imports =
    [
      ./hardware-configuration-laptop.nix
      #./configs/thinkfan.nix
      ../../configs/bluetooth.nix
      ../../configs/tlp.nix
      ../../nixos.nix
      ../../packages.nix
    ];

  # Networking
  networking = {
    hostName = vars.laptop;
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  };
}
