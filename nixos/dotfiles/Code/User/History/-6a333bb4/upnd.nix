{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.ags.homeManagerModules.default
    ../../configs/user/styling.nix
    ../../configs/user/zsh.nix
    ./dotfiles.nix
  ];

  home.username = "martin";
  home.homeDirectory = "/home/martin";

  nixpkgs.config.allowUnfree = true;

  programs = {
    ags = {
      enable = true;
      configDir = ./dotfiles/ags;
      extraPackages = [ pkgs.libsoup_3 ];
    };

    kitty = {
      enable = true;
      extraConfig = builtins.readFile ./dotfiles/kitty/kitty.conf;
    };

    vscode = {
      enable = true;
      extensions = with pkgs.vscode-extensions; [
        bbenoist.nix
        jnoortheen.nix-ide
        piousdeer.adwaita-theme
        pkief.material-product-icons
      ];
      userSettings = {
        
      };
    };

    git = {
      enable = true;
      userName = "RoccoRakete";
      userEmail = "m.schaumann@mscloud.uk";
      extraConfig = {
        credential.helper = "${
          pkgs.git.override { withLibsecret = true; }
        }/bin/git-credential-libsecret";
      };
    };
  };

  # Packages that should be installed to the user profile.
  home.packages = [
    pkgs.htop
  ];

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };

  xdg.desktopEntries."org.gnome.Settings" = {
    name = "Settings";
    comment = "Gnome Control Center";
    icon = "org.gnome.Settings";
    exec = "env XDG_CURRENT_DESKTOP=gnome ${pkgs.gnome.gnome-control-center}/bin/gnome-control-center";
    categories = [ "X-Preferences" ];
    terminal = false;
  };

  home.file = { };
  home.sessionVariables = { };
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
