{ config, home-manager, pkgs, username, inputs, ... }:

    let
      username = "martin";
    in

    let
      homeDirectory = "/home/${username}";
    in

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
      <home-manager/nixos>     
      "${homeDirectory}/.dots/nixos/nixos.nix"
      "${homeDirectory}/.dots/nixos/home.nix"
      "${homeDirectory}/.dots/nixos/packages.nix"
    ];
}
