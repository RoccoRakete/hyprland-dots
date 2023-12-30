{ config, home-manager, lib, pkgs, username, inputs, ... }:

let
  vars = import ../../variables.nix;
in

{
  imports =
    [
      ./hardware-configuration-laptop.nix
      ./configs-laptop/thinkfan.nix
      ../../configs/global-configs/services.nix
      ../../configs/global-configs/programs.nix
      ../../configs/global-configs/nvim.nix
      ../../configs/global-configs/bluetooth.nix
      ../../configs/global-configs/tlp.nix
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
