{ pkgs, options, lib, ... }:

let
  inherit (pkgs) nixos-icons;
  hostname = "OptiPlex3060";
  user1 = "martin";
  homeDirectory1 = "/home/${user1}";