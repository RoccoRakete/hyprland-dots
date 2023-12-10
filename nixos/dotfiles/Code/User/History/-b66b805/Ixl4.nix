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
      "export TERM=kitty";
    shellAliases = {
      ll = "ls -lah";
      update = "sudo nixos-rebuild switch";
      upgrade-desktop = "sudo nixos-rebuild switch --flake ~/.dots/nixos#OptiPlex3060";
      upgrade-laptop = "sudo nixos-rebuild switch --flake ~/.dots/nixos#ThinkPad";
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
    historySubstringSearch = {
      enable = true;
      searchUpKey = [ "\\eOA" ];
      searchDownKey = [ "\\eOB" ];
    };
    enableCompletion = true;
  };
}
