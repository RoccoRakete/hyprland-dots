# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

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
    ];
}
