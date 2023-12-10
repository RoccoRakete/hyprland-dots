{ pkgs, inputs, username, home-manager, ... }:

{

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

  home.stateVersion = "23.11";
}

