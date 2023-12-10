{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.ags.homeManagerModules.default
  ];

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
      userSettings = { };
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
}
