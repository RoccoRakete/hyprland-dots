{ pkgs, lib, config, ... }:

{
  programs.zsh = {
    enable = true;
    initExtraFirst =
      #"wal -R" + "\n" +
      "clear";

    initExtra =
      "source ~/.p10k.zsh" + "\n" +
      "neofetch" + "\n" +
      "export TERM=xterm" + "\n" +
      "export EDITOR=nvim" + "\n" +
      "bindkey '^[[A' menu-complete"
    ;

    shellAliases = {
      #ll = "ls -lah";
      ll = "eza -loah --icons=always --no-permissions --git";
      v = "nvim";

      editd = "nvim ~/.dots";

      pushd = "cd ~/.dots && git add -A && git commit && git push --repo https://github.com/RoccoRakete/hyprland-dots.git && cd ~";
      addd = "cd ~/.dots && git add -A && cd ~";

      update = "sudo nixos-rebuild switch";
      flake-update = "nix flake update ~/.dots/nixos";
      fwup = "sudo fwupdmgr refresh --force && sudo fwupdmgr get-updates && sudo fwupdmgr update";

      upgrade-desktop = "sudo nixos-rebuild switch --upgrade --flake ~/.dots/nixos#OptiPlex3060";
      home-upgrade-desktop = "home-manager switch --flake ~/.dots/nixos#OptiPlex3060";
      news-desktop = "home-manager news --flake ~/.dots/nixos#OptiPlex3060";

      upgrade-laptop = "nh os switch -H ThinkPad";
      home-upgrade-laptop = "nh home switch -c ThinkPad";
      news-laptop = "home-manager news --flake ~/.dots/nixos#ThinkPad";
    };

    enableCompletion = false;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    historySubstringSearch = {
      enable = true;
      searchUpKey = [ "\\eOA" ];
      searchDownKey = [ "\\eOB" ];
    };
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    zplug = {
      enable = true;
      plugins = [
        { name = "zsh-users/zsh-autosuggestions"; }
        { name = "marlonrichert/zsh-autocomplete"; }
        { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
      ];
    };

    oh-my-zsh = {
      enable = false;
      plugins = [
        "git"
        "colored-man-pages"
      ];
    };
  };
}
