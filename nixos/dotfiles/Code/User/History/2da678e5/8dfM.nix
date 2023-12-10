{ config, home-manager, pkgs, username, inputs, ... }:



{
  imports =
    [
      ./configs/hardware-configuration.nix
      ./configs/variables.nix
      #./configs/thinkfan.nix
      ./configs/bluetooth.nix
      ./configs/tlp.nix
      ./nixos.nix
      ./packages.nix
    ];
}
