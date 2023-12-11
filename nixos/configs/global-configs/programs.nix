{ pkgs, inputs, ... }:

{
    programs = {
    hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.hyprland;
    };
    thunar = {
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
      enable = true;
    };
    dconf.enable = true;
    zsh.enable = true;
    #hyprland.enable = true;
    direnv.enable = true;
  };
}