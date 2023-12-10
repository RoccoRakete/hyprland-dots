{ inputs, config, pkgs, ... }:

{
  imports = [ inputs.ags.homeManagerModules.default ];

  home.username = "martin";
  home.homeDirectory = "/home/martin";

  programs = {
    ags = {
      enable = true;
      configDir = null;
      extraPackages = [ pkgs.libsoup_3 ];
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
    zsh = {
      enable = true;
      initExtraFirst =
        "wal -R" + "\n" +
        "clear";
      initExtra =
        "source ~/.p10k.zsh" + "\n" +
        "neofetch";
      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
        upgrade = "sudo nixos-rebuild switch --flake ~/.dots/nixos";
        home-upgrade = "nix flake update ~/.dots/nixos && home-manager switch --flake ~/.dots/nixos";
        v = "nvim";
      };
      zplug = {
        enable = true;
        plugins = [
          { name = "zsh-users/zsh-autosuggestions"; }
          { name = "marlonrichert/zsh-autocomplete"; }
          { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
        ];
      };
      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
        ];
      };
      syntaxHighlighting.enable = true;
      history.size = 1000;
      history.extended = false;
      #historySubstringSearch = {
       # enable = true;
        #searchUpKey = [ "\\eOA" ];
        #searchDownKey = [ "\\eOB" ];
      #};
      enableCompletion = true;
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

  home.sessionVariables = {
    EDITOR = "nvim";
  };
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
