{ pkgs, ... }:

{
  programs.nixvim.plugins.nvim-autopairs = {
    enable = true;
    checkTs = true;
  };
}
