{ pkgs, lib, ... }:

{
  programs.nixvim.plugins.none-ls.sources.formatting.prettier = {
    enable = true;
    disableTsServerFormatter = true;
  };
}

