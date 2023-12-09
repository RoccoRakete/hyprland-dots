{ inputs, config, pkgs, ... }:

{
  gtk = {
    enable = true;
    theme = {
      package = pkgs.adw-gtk3;
      name = "adw-gtk3-dark";
    };
    font = {
      name = "Ubuntu Nerd Font";
      size = 13;
    };
    #iconTheme = {
    #  package = pkgs.libsForQt5.breeze-icons;
    #  name = "breeze-dark";
    #};
  };

  home = {
    pointerCursor = {
      gtk.enable = true;
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };
}
