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
      /hardware-configuration.nix
      ./.dots/nixos/nixos.nix
      ./.dots/nixos/packages.nix
    ];
}
