{ pkgs, lib, ... }:

{
  programs.nixvim.plugins.which-key = {
    enable = true;
  };
}
