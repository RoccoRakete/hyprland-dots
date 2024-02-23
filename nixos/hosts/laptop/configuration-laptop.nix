{ config, home-manager, lib, pkgs, username, inputs, ... }:

let
  vars = import ../../variables.nix;
in

{
  imports =
    [
      ./hardware-configuration-laptop.nix
      ./configs-laptop/thinkfan.nix
      ../../configs/nixos-configs/services.nix
      ../../configs/nixos-configs/services.nix
      ../../configs/nixos-configs/programs.nix
      ../../configs/nixos-configs/nixvim/nvim.nix
      ../../configs/nixos-configs/bluetooth.nix
      ../../configs/nixos-configs/tlp.nix
      ../../nixos.nix
      ../../packages.nix
    ];

  services.logind = {
    lidSwitchDocked = "ignore";
    #lidSwitch = "ignore";
  };

  # Networking
  networking = {
    hostName = vars.laptop;
    useDHCP = lib.mkDefault true;
    networkmanager.enable = true;
  };
}
