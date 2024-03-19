{ inputs, pkgs, ... }:

{
  imports = [
    inputs.ags.homeManagerModules.default
    inputs.hyprlock.homeManagerModules.default
    inputs.anyrun.homeManagerModules.default
  ];

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;

  programs = {
    hyprlock.enable = true;
    anyrun = {
      enable = false;
      config = {
        plugins = [
          inputs.anyrun.packages.${pkgs.system}.applications
        ];
        width = { fraction = 0.25; };
        y = { fraction = 0.3; };
        hideIcons = false;
        ignoreExclusiveZones = true;
        layer = "overlay";
        hidePluginInfo = true;
        closeOnClick = true;
        showResultsImmediately = true;
        maxEntries = null;
      };
      extraCss = ''
        @import url("stylesheet.css");
      '';
    };
    wofi = {
      enable = true;
    };
    #rofi = {
    #  enable = true;
    #  package = pkgs.rofi.override { plugins = [ pkgs.rofi-wayland ]; };
    #};
    ags = {
      enable = false;
      configDir = ./home-dotfiles-laptop/ags;
      #configDir = null;
      extraPackages = [ pkgs.libsoup_3 ];
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
    zoxide = {
      enable = true;
      options = [
        "--cmd cd"
      ];
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
    gparted
    (python311.withPackages (p: [ p.python-pam ]))
  ];
}
