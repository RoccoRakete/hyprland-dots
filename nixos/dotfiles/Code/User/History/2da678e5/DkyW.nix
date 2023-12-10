{ config, home-manager, pkgs, username, inputs, ... }:

let
  inherit (pkgs) nixos-icons;
  hostname = "OptiPlex3060";
  user1 = "martin";
  homeDirectory1 = "/home/${user1}";
in

{
  imports =
    [
      ./configs/hardware-configuration.nix
      ./configs/variables.nix
      #./configs/thinkfan.nix
      ./configs/bluetooth.nix
      ./configs/tlp.nix
      ./nixos.nix
      ./packages.nix
    ];
}
