{ config, home-manager, pkgs, username, inputs, ... }:

let
  username = "martin";
in

let
  homeDirectory = "/home/${username}";
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
}
