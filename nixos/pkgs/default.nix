{ pkgs, ... }:
let
  callPackage = pkgs.callPackage;
in
{
  nixpkgs.overlays = [
    (_final: _prev: {
      custompkgs = {
        kanagawa-gtk-theme = callPackage ./kanagawa-gtk-theme.nix { };
      };
    })
  ];
}
