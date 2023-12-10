{ config, pkgs, username, ... }:

    let
      username = "martin";
    in

    let
      homeDirectory = "/home/${username}";
    in

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      <home-manager/nixos> 
      "${homeDirectory}/.config/nixos/nixos.nix"
      "${homeDirectory}/.config/nixos/home.nix"
      "${homeDirectory}/.config/nixos/packages.nix"
    ];
}
