{ inputs, config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    initExtraFirst =
      "wal -R" + "\n" +
      "clear";

    initExtra =
      "source ~/.p10k.zsh" + "\n" +
      "neofetch" + "\n" +
      "export TERM=kitty" + "\n" +
      "export EDITOR=nvim";

    shellAliases = {
      ll = "ls -lah";
      v = "nvim";
      editd = "nvim ~/.dots";

      update = "sudo nixos-rebuild switch";
      flake-update = "nix flake update ~/.dots/nixos";

      upgrade-desktop = "sudo nixos-rebuild switch --flake ~/.dots/nixos#OptiPlex3060";
      home-upgrade-desktop = "home-manager switch --flake ~/.dots/nixos#OptiPlex3060";
      news-desktop = "home-manager news --flake ~/.dots/nixos#OptiPlex3060";

      upgrade-laptop = "sudo nixos-rebuild switch --flake ~/.dots/nixos#ThinkPad";
      home-upgrade-laptop = "home-manager switch --flake ~/.dots/nixos#ThinkPad";
      news-laptop = "home-manager news --flake ~/.dots/nixos#ThinkPad";
    };

    enableCompletion = true;
    syntaxHighlighting.enable = true;
    history.size = 1000;
    history.extended = true;
    historySubstringSearch = {
      enable = true;
      searchUpKey = [ "\\eOA" ];
      searchDownKey = [ "\\eOB" ];
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
  };
}
