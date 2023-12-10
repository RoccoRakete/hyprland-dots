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
      /etc/nixos/hardware-configuration.nix
      "${homeDirectory}/.dots/nixos/nixos.nix"
      "${homeDirectory}/.dots/nixos/packages.nix"
    ];
}
