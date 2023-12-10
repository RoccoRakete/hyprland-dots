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
      ./hardware-configuration.nix
      <home-manager/nixos>     
      ./nixos.nix
      ./home.nix
      ./packages.nix
    ];
}
