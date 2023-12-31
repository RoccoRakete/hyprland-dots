{ inputs, config, pkgs, ... }:

{
  imports = [
    inputs.ags.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  programs = {
    ags = {
      enable = true;
      configDir = ./home-dotfiles-laptop/ags;
      #configDir = null;
      extraPackages = [ pkgs.libsoup_3 ];
    };

    kitty = {
      enable = true;
      theme = "Catppuccin-Mocha";
      settings = {
        font_family = "Hurmit Nerd Font";
        font_size = "14.0";
        scrollback_lines = 10000;
        show_hyperlink_targets = "yes";
        focus_follows_mouse = "no";
        enable_audio_bell = false;
        tab_bar_min_tabs = 1;
        tab_bar_edge = "bottom";
        tab_bar_style = "powerline";
        tab_powerline_style = "slanted";
        tab_title_template = "{title}{' :{}:'.format(num_windows) if num_windows > 1 else ''}";
      };
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
  home.packages = with pkgs; [
    htop
    sassc
    (python311.withPackages (p: [ p.python-pam ]))
  ];
}
