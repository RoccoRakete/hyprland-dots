{
  home-manager.users.martin = { pkgs, inputs, username, ... }:

    let
      homeDirectory = "/home/${username}";
    in

    {



      programs = {
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
        home-manager.enable = true;
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
          historySubstringSearch = {
            enable = true;
            searchUpKey = [ "\\eOA" ];
            searchDownKey = [ "\\eOB" ];
          };
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

      home.stateVersion = "23.11";
    };

}
