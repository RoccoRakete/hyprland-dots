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
      ./nixos/nixos.nix
      ./nixos/packages.nix
    ];
}
