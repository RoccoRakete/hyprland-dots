{ pkgs, ... }:

{
  imports = [
    ../../pkgs
  ];

  home = {
    pointerCursor = {
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };

  gtk = {
    enable = true;
    iconTheme.package = pkgs.morewaita-icon-theme;
    iconTheme.name = "MoreWaita";
    theme = {
      name = "adw-gtk3-dark";
      package = pkgs.adw-gtk3;
      #theme = {
      #  name = "Kanagawa-BL";
      #  package = pkgs.custompkgs.kanagawa-gtk-theme;
    };
    #};

    #gtk = {
    #  enable = true;
    #  theme = {
    #    name = "Catppuccin-Mocha-Standard-Blue-Dark";
    #    package = pkgs.catppuccin-gtk.override {
    #      accents = [ "blue" ];
    #      size = "standard";
    #      tweaks = [ "normal" ];
    #      variant = "mocha";
    #    };
    #  };
    font = {
      name = "Ubuntu Nerd Font";
      size = 13;
    };
    # gtk3.extraCss = ''
    #   headerbar, .titlebar,
    #   .csd:not(.popup):not(tooltip):not(messagedialog) decoration{
    #     border-radius: 0;
    #   };
    #   levelbar {
    #     outline-offset: 0;
    #   };
    # '';
    #iconTheme.name = moreWaita.name;
  };

  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "Catppuccin-Mocha-Standard-Blue-Dark";
  };
}
