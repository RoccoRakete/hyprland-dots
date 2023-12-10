{ config, pkgs, ... }:

{
  # ... all your other stuff

  programs.bash = {
    enable = true;
  };
  programs.zsh = {
    enable = true;
  };
}