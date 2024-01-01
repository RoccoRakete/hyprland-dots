{ inputs, config, pkgs, ... }:

let
  moreWaita = pkgs.stdenv.mkDerivation {
    name = "MoreWaita";
    src = inputs.more-waita;
    installPhase = ''
      mkdir -p $out/share/icons
      mv * $out/share/icons
    '';
  };
in
{
  home = {
    packages = with pkgs; [
      moreWaita
    ];

    pointerCursor = {
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };

  gtk = {
    enable = true;
    theme = {
      name = "Catppuccin-Mocha-Standard-Blue-Dark";
      package = pkgs.catppuccin-gtk.override {
        accents = [ "blue" ];
        size = "standard";
        tweaks = [ "normal" ];
        variant = "mocha";
      };
    };
    #theme = {
    #  package = pkgs.catppuccin-gtk;
    #  name = "adw-gtk3-dark";
    #};
    font = {
      name = "Ubuntu Nerd Font";
      size = 13;
    };
    gtk3.extraCss = ''
      headerbar, .titlebar,
      .csd:not(.popup):not(tooltip):not(messagedialog) decoration{
        border-radius: 0;
      };
      levelbar {
        border-radius: 10;
      };
    '';
    #iconTheme.name = moreWaita.name;
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "adwaita-dark";
  };
}
