{ pkgs, ... }:
let
  callPackage = pkgs.callPackage;
in
{
  nixpkgs.overlays = [
    (final: prev: {
      custompkgs = {
        kanagawa-gtk-theme = callPackage ./kanagawa-gtk-theme.nix { };
      };
    })
  ];
}
