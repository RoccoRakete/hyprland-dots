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
      ./hardware-configuration.nix
      ./nixos.nix
      ./packages.nix
    ];
}
